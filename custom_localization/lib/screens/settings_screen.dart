import 'package:custom_localization/core/localization/localization_engine.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  late String _selectedLanguage;
  String _selectedTheme = 'system';
  bool _notificationsEnabled = true;
  bool _biometricEnabled = false;
  bool _autoSyncEnabled = true;

  @override
  void initState() {
    super.initState();
    _selectedLanguage = LocalizationEngine().currentLangCode;
  }

  void _onLanguageChanged(String? value, LocalizationEngine engine) {
    if (value != null && !engine.isLoading) {
      setState(() {
        _selectedLanguage = value;
      });
      engine.loadLanguage(value);
    }
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final engine = Provider.of<LocalizationEngine>(context);

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              colorScheme.primaryContainer.withValues(alpha:0.3),
              colorScheme.surface,
            ],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header Section
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: colorScheme.primaryContainer,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(
                        Icons.settings_rounded,
                        color: colorScheme.primary,
                        size: 28,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            engine.translate('settings.title'),
                            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          Text(
                            engine.translate('settings.subtitle'),
                            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                  color: colorScheme.onSurfaceVariant,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                // Info Card
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: colorScheme.surfaceContainerHighest,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.info_outline_rounded,
                        color: colorScheme.primary,
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          engine.translate('settings.info'),
                          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                color: colorScheme.onSurfaceVariant,
                                height: 1.4,
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                // Language Settings
                _buildSectionHeader(context, engine.translate('settings.lang_settings'), Icons.language_rounded),
                const SizedBox(height: 12),
                Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: colorScheme.primaryContainer,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Icon(
                            Icons.language_rounded,
                            color: colorScheme.primary,
                          ),
                        ),
                        title: Text(
                          engine.translate('settings.select_lang'),
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          _getLanguageName(_selectedLanguage),
                          style: TextStyle(
                            color: colorScheme.onSurfaceVariant,
                          ),
                        ),
                        trailing: engine.isLoading 
                          ? const SizedBox(width: 20, height: 20, child: CircularProgressIndicator(strokeWidth: 2))
                          : null,
                      ),
                      const Divider(height: 1, indent: 72),
                      RadioListTile<String>(
                        title: Row(
                          children: [
                            const Text('English'),
                            const SizedBox(width: 8),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 2,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.blue.withValues(alpha:0.1),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: const Text(
                                'EN',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                          ],
                        ),
                        value: 'en',
                        groupValue: _selectedLanguage,
                        onChanged: (val) => _onLanguageChanged(val, engine),
                      ),
                      const Divider(height: 1, indent: 72),
                      RadioListTile<String>(
                        title: Row(
                          children: [
                            const Text('සිංහල'),
                            const SizedBox(width: 8),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 2,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.green.withValues(alpha:0.1),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: const Text(
                                'SI',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green,
                                ),
                              ),
                            ),
                          ],
                        ),
                        value: 'si',
                        groupValue: _selectedLanguage,
                        onChanged: (val) => _onLanguageChanged(val, engine),
                      ),
                      const Divider(height: 1, indent: 72),
                      RadioListTile<String>(
                        title: Row(
                          children: [
                            const Text('தமிழ்'),
                            const SizedBox(width: 8),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 2,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.orange.withValues(alpha:0.1),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: const Text(
                                'TA',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.orange,
                                ),
                              ),
                            ),
                          ],
                        ),
                        value: 'ta',
                        groupValue: _selectedLanguage,
                        onChanged: (val) => _onLanguageChanged(val, engine),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                // Display Settings
                _buildSectionHeader(context, engine.translate('settings.display_settings'), Icons.palette_rounded),
                const SizedBox(height: 12),
                Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: colorScheme.primaryContainer,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Icon(
                            Icons.brightness_6_rounded,
                            color: colorScheme.primary,
                          ),
                        ),
                        title: Text(
                          engine.translate('settings.theme_mode'),
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          _getThemeName(_selectedTheme, engine),
                          style: TextStyle(
                            color: colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ),
                      const Divider(height: 1, indent: 72),
                      RadioListTile<String>(
                        title: Row(
                          children: [
                            const Icon(Icons.light_mode_rounded, size: 20),
                            const SizedBox(width: 12),
                            Text(engine.translate('settings.light')),
                          ],
                        ),
                        value: 'light',
                        groupValue: _selectedTheme,
                        onChanged: (String? value) {
                          setState(() {
                            _selectedTheme = value!;
                          });
                        },
                      ),
                      const Divider(height: 1, indent: 72),
                      RadioListTile<String>(
                        title: Row(
                          children: [
                            const Icon(Icons.dark_mode_rounded, size: 20),
                            const SizedBox(width: 12),
                            Text(engine.translate('settings.dark')),
                          ],
                        ),
                        value: 'dark',
                        groupValue: _selectedTheme,
                        onChanged: (String? value) {
                          setState(() {
                            _selectedTheme = value!;
                          });
                        },
                      ),
                      const Divider(height: 1, indent: 72),
                      RadioListTile<String>(
                        title: Row(
                          children: [
                            const Icon(Icons.brightness_auto_rounded, size: 20),
                            const SizedBox(width: 12),
                            Expanded(child: Text(engine.translate('settings.system'))),
                          ],
                        ),
                        value: 'system',
                        groupValue: _selectedTheme,
                        onChanged: (String? value) {
                          setState(() {
                            _selectedTheme = value!;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                // Notification Settings
                _buildSectionHeader(context, engine.translate('settings.notifications'), Icons.notifications_rounded),
                const SizedBox(height: 12),
                Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    children: [
                      SwitchListTile(
                        secondary: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.blue.withValues(alpha:0.1),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Icon(
                            Icons.notifications_rounded,
                            color: Colors.blue,
                          ),
                        ),
                        title: Text(
                          engine.translate('settings.enable_notifications'),
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          engine.translate('settings.notifications_desc'),
                        ),
                        value: _notificationsEnabled,
                        onChanged: (bool value) {
                          setState(() {
                            _notificationsEnabled = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                // Security Settings
                _buildSectionHeader(context, engine.translate('settings.security'), Icons.security_rounded),
                const SizedBox(height: 12),
                Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    children: [
                      SwitchListTile(
                        secondary: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.green.withValues(alpha:0.1),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Icon(
                            Icons.fingerprint_rounded,
                            color: Colors.green,
                          ),
                        ),
                        title: Text(
                          engine.translate('settings.biometric'),
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          engine.translate('settings.biometric_desc'),
                        ),
                        value: _biometricEnabled,
                        onChanged: (bool value) {
                          setState(() {
                            _biometricEnabled = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                // Sync Settings
                _buildSectionHeader(context, engine.translate('settings.data_sync'), Icons.sync_rounded),
                const SizedBox(height: 12),
                Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    children: [
                      SwitchListTile(
                        secondary: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.purple.withValues(alpha:0.1),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Icon(
                            Icons.sync_rounded,
                            color: Colors.purple,
                          ),
                        ),
                        title: Text(
                          engine.translate('settings.auto_sync'),
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          engine.translate('settings.auto_sync_desc'),
                        ),
                        value: _autoSyncEnabled,
                        onChanged: (bool value) {
                          setState(() {
                            _autoSyncEnabled = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 32),
                // Save Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Row(
                            children: [
                              const Icon(Icons.check_circle, color: Colors.white),
                              const SizedBox(width: 8),
                              Text(engine.translate('settings.saved_success')),
                            ],
                          ),
                          backgroundColor: Colors.green,
                          behavior: SnackBarBehavior.floating,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      );
                    },
                    icon: const Icon(Icons.save_rounded),
                    label: Text(
                      engine.translate('settings.save'),
                      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 18),
                      backgroundColor: colorScheme.primary,
                      foregroundColor: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSectionHeader(BuildContext context, String title, IconData icon) {
    final colorScheme = Theme.of(context).colorScheme;
    return Row(
      children: [
        Icon(icon, color: colorScheme.primary, size: 24),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            title,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
      ],
    );
  }

  String _getLanguageName(String code) {
    switch (code) {
      case 'en':
        return 'English';
      case 'si':
        return 'සිංහල (Sinhala)';
      case 'ta':
        return 'தமிழ் (Tamil)';
      default:
        return 'English';
    }
  }

  String _getThemeName(String theme, LocalizationEngine engine) {
    switch (theme) {
      case 'light':
        return engine.translate('settings.light');
      case 'dark':
        return engine.translate('settings.dark');
      case 'system':
        return engine.translate('settings.system');
      default:
        return engine.translate('settings.system');
    }
  }
}
