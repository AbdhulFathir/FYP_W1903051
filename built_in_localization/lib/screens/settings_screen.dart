import 'package:built_in_localization/app_locale_scope.dart';
import 'package:flutter/material.dart';
import '../l10n/app_localizations.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  String _selectedLanguage = 'en';
  String _selectedTheme = 'system';
  bool _notificationsEnabled = true;
  bool _biometricEnabled = false;
  bool _autoSyncEnabled = true;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Sync selected language with current app locale when opening settings
    final scope = AppLocaleScope.of(context);
    final currentCode = scope?.locale?.languageCode ??
        Localizations.localeOf(context).languageCode;
    if (currentCode != _selectedLanguage &&
        ['en', 'si', 'ta'].contains(currentCode)) {
      _selectedLanguage = currentCode;
    }
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              colorScheme.primaryContainer.withOpacity(0.3),
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
                            l10n.settings,
                            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          Text(
                            l10n.customizeAppExperience,
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
                          l10n.configurePreferences,
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
                _buildSectionHeader(context, l10n.languageSettings, Icons.language_rounded),
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
                          l10n.selectLanguage,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          _getLanguageName(_selectedLanguage, l10n),
                          style: TextStyle(
                            color: colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ),
                      const Divider(height: 1, indent: 72),
                      RadioListTile<String>(
                        title: Row(
                          children: [
                            Text(l10n.english),
                            const SizedBox(width: 8),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 2,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.blue.withOpacity(0.1),
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
                        onChanged: (String? value) {
                          setState(() {
                            _selectedLanguage = value!;
                          });
                          _changeLanguage(context, value!);
                        },
                      ),
                      const Divider(height: 1, indent: 72),
                      RadioListTile<String>(
                        title: Row(
                          children: [
                            Text(l10n.sinhala),
                            const SizedBox(width: 8),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 2,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.green.withOpacity(0.1),
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
                        onChanged: (String? value) {
                          setState(() {
                            _selectedLanguage = value!;
                          });
                          _changeLanguage(context, value!);
                        },
                      ),
                      const Divider(height: 1, indent: 72),
                      RadioListTile<String>(
                        title: Row(
                          children: [
                            Text(l10n.tamil),
                            const SizedBox(width: 8),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 2,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.orange.withOpacity(0.1),
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
                        onChanged: (String? value) {
                          setState(() {
                            _selectedLanguage = value!;
                          });
                          _changeLanguage(context, value!);
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                // Display Settings
                _buildSectionHeader(context, l10n.displaySettings, Icons.palette_rounded),
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
                          l10n.themeMode,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          _getThemeName(_selectedTheme, l10n),
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
                            const Text('Light Mode'),
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
                            const Text('Dark Mode'),
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
                            const Text('System Default'),
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
                _buildSectionHeader(context, l10n.notifications, Icons.notifications_rounded),
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
                            color: Colors.blue.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Icon(
                            Icons.notifications_rounded,
                            color: Colors.blue,
                          ),
                        ),
                        title: Text(
                          l10n.enableNotifications,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          l10n.notificationsDescription,
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
                _buildSectionHeader(context, l10n.security, Icons.security_rounded),
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
                            color: Colors.green.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Icon(
                            Icons.fingerprint_rounded,
                            color: Colors.green,
                          ),
                        ),
                        title: Text(
                          l10n.biometricAuthentication,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          l10n.biometricDescription,
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
                _buildSectionHeader(context, l10n.dataSync, Icons.sync_rounded),
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
                            color: Colors.purple.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Icon(
                            Icons.sync_rounded,
                            color: Colors.purple,
                          ),
                        ),
                        title: Text(
                          l10n.autoSync,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          l10n.autoSyncDescription,
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
                              Text(l10n.settingsSaved),
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
                      l10n.saveSettings,
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
        Text(
          title,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
      ],
    );
  }

  String _getLanguageName(String code, AppLocalizations l10n) {
    switch (code) {
      case 'en':
        return l10n.english;
      case 'si':
        return l10n.sinhala;
      case 'ta':
        return l10n.tamil;
      default:
        return l10n.english;
    }
  }

  String _getThemeName(String theme, AppLocalizations l10n) {
    switch (theme) {
      case 'light':
        return l10n.lightMode;
      case 'dark':
        return l10n.darkMode;
      case 'system':
        return l10n.systemDefault;
      default:
        return l10n.systemDefault;
    }
  }

  void _changeLanguage(BuildContext context, String languageCode) {
    AppLocaleScope.of(context)?.setLocale(Locale(languageCode));
  }
}
