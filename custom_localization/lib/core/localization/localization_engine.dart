import 'dart:collection';
import 'dart:convert';
import 'package:flutter/services.dart';

class LocalizationEngine {
  static final LocalizationEngine _instance = LocalizationEngine._internal();
  factory LocalizationEngine() => _instance;
  LocalizationEngine._internal();

  final LinkedHashMap<String, String> _cache = LinkedHashMap<String, String>();
  final int _maxCacheSize = 100;
  
  Map<String, dynamic> _currentLanguageData = {};
  String _currentLangCode = 'en';

  String get currentLangCode => _currentLangCode;

  Future<void> loadLanguage(String langCode) async {
    try {
      final jsonString = await rootBundle.loadString('assets/lang/$langCode.json');
      _currentLanguageData = json.decode(jsonString);
      _currentLangCode = langCode;
      _cache.clear(); // Reset cache when language changes
    } catch (e) {
      print('Error loading language $langCode: $e');
      // Fallback or keep current
    }
  }

  String translate(String key) {
    // 1. Cache hit
    if (_cache.containsKey(key)) {
      // Move to end to mark as recently used
      final value = _cache.remove(key);
      _cache[key] = value!;
      return value;
    }

    // 2. Cache miss -> fetch from data
    // Support nested keys like "home.title"
    dynamic value = _currentLanguageData;
    List<String> keys = key.split('.');
    
    for (var k in keys) {
      if (value is Map && value.containsKey(k)) {
        value = value[k];
      } else {
        value = key; // Fallback to key itself if not found
        break;
      }
    }

    String result = value.toString();

    // 3. Store in cache (LRU behavior)
    _addToCache(key, result);

    return result;
  }

  void _addToCache(String key, String value) {
    if (_cache.containsKey(key)) {
      _cache.remove(key); // refresh order
    } else if (_cache.length >= _maxCacheSize) {
      _cache.remove(_cache.keys.first); // LRU removal (oldest)
    }
    _cache[key] = value;
  }
  
  // Prefetching helper for specific keys
  void prefetch(List<String> keys) {
    for (var key in keys) {
      translate(key);
    }
  }
}
