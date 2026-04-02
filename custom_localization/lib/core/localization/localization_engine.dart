import 'dart:collection';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalizationEngine extends ChangeNotifier {
  static final LocalizationEngine _instance = LocalizationEngine._internal();
  factory LocalizationEngine() => _instance;
  LocalizationEngine._internal();

  final LinkedHashMap<String, String> _cache = LinkedHashMap<String, String>();
  final int _maxCacheSize = 100;
  
  // Flattened map to avoid runtime traversal overhead (Fix #1)
  Map<String, String> _flattenedData = {};
  String _currentLangCode = 'en';
  bool _isLoading = false;

  // String Interning Pool (Fix #3)
  final Set<String> _internPool = {};

  String get currentLangCode => _currentLangCode;
  bool get isLoading => _isLoading;

  static const String _prefKey = 'selected_language_code';

  Future<void> init() async {
    final prefs = await SharedPreferences.getInstance();
    final savedLang = prefs.getString(_prefKey) ?? 'en';
    await loadLanguage(savedLang);
  }

  Future<void> loadLanguage(String langCode) async {
    _isLoading = true;
    notifyListeners(); // Notify UI that loading has started (Fix #4)

    try {
      final jsonString = await rootBundle.loadString('assets/lang/$langCode.json');
      final Map<String, dynamic> rawData = json.decode(jsonString);
      
      // Clear previous data
      _flattenedData = {};
      _cache.clear();
      
      // Flatten and intern (Fix #1 & #3)
      _flatten(rawData, '');
      
      _currentLangCode = langCode;

      // Save to preferences
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(_prefKey, langCode);

    } catch (e) {
      debugPrint('Error loading language $langCode: $e');
    } finally {
      _isLoading = false;
      notifyListeners(); // Notify UI that loading is complete (Fix #2 & #4)
    }
  }

  // Recursive flattening function (Fix #1)
  void _flatten(Map<String, dynamic> data, String prefix) {
    data.forEach((key, value) {
      final String fullKey = prefix.isEmpty ? key : '$prefix.$key';
      
      if (value is Map<String, dynamic>) {
        _flatten(value, fullKey);
      } else {
        // Interning logic: ensures identical strings share memory (Fix #3)
        final String stringValue = value.toString();
        final String internedValue = _intern(stringValue);
        _flattenedData[_intern(fullKey)] = internedValue;
      }
    });
  }

  // Simple string interning helper (Fix #3)
  String _intern(String s) {
    return _internPool.lookup(s) ?? ((){
      _internPool.add(s);
      return s;
    })();
  }

  String translate(String key) {
    // 1. Cache hit
    if (_cache.containsKey(key)) {
      final value = _cache.remove(key);
      _cache[key] = value!;
      return value;
    }

    // 2. Cache miss -> fetch from flattened data (O(1) lookup vs O(N) traversal) (Fix #1)
    String result = _flattenedData[key] ?? key;

    // 3. Store in cache (LRU behavior)
    _addToCache(key, result);

    return result;
  }

  void _addToCache(String key, String value) {
    if (_cache.containsKey(key)) {
      _cache.remove(key); 
    } else if (_cache.length >= _maxCacheSize) {
      _cache.remove(_cache.keys.first); 
    }
    _cache[key] = value;
  }
  
  void prefetch(List<String> keys) {
    for (var key in keys) {
      translate(key);
    }
  }
}
