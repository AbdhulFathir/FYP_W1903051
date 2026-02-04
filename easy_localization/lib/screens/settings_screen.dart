import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:provider/provider.dart';

import '../providers/locale_provider.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  String _selectedTheme = 'system';
  bool _notificationsEnabled = true;
  bool _biometricEnabled = false;
  bool _autoSyncEnabled = true;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final selectedLanguage = context.watch<LocaleProvider>().languageCode;

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
                            'settings.title'.tr(),
                            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          Text(
                            'settings.subtitle'.tr(),
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
                          'settings.info'.tr(),
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
                _buildSectionHeader(context, 'settings.section_language'.tr(), Icons.language_rounded),
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
                          'settings.select_language'.tr(),
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          _getLanguageName(selectedLanguage),
                          style: TextStyle(
                            color: colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ),
                      const Divider(height: 1, indent: 72),
                      RadioListTile<String>(
                        title: Row(
                          children: [
                            Text('settings.lang_en'.tr()),
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
                        groupValue: selectedLanguage,
                        onChanged: (String? value) {
                          if (value == null) return;
                          context.read<LocaleProvider>().setLocale(Locale(value));
                        },
                      ),
                      const Divider(height: 1, indent: 72),
                      RadioListTile<String>(
                        title: Row(
                          children: [
                            Text('settings.lang_si'.tr()),
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
                        groupValue: selectedLanguage,
                        onChanged: (String? value) {
                          if (value == null) return;
                          context.read<LocaleProvider>().setLocale(Locale(value));
                        },
                      ),
                      const Divider(height: 1, indent: 72),
                      RadioListTile<String>(
                        title: Row(
                          children: [
                            Text('settings.lang_ta'.tr()),
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
                        groupValue: selectedLanguage,
                        onChanged: (String? value) {
                          if (value == null) return;
                          context.read<LocaleProvider>().setLocale(Locale(value));
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                // Display Settings
                _buildSectionHeader(context, 'settings.section_display'.tr(), Icons.palette_rounded),
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
                          'settings.theme_mode'.tr(),
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          _getThemeName(_selectedTheme),
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
                            Text('settings.theme_light'.tr()),
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
                            Text('settings.theme_dark'.tr()),
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
                            Text('settings.theme_system'.tr()),
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
                _buildSectionHeader(context, 'settings.section_notifications'.tr(), Icons.notifications_rounded),
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
                          'settings.enable_notifications'.tr(),
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text('settings.notifications_subtitle'.tr()),
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
                _buildSectionHeader(context, 'settings.section_security'.tr(), Icons.security_rounded),
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
                          'settings.biometric'.tr(),
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text('settings.biometric_subtitle'.tr()),
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
                _buildSectionHeader(context, 'settings.section_sync'.tr(), Icons.sync_rounded),
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
                          'settings.auto_sync'.tr(),
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text('settings.auto_sync_subtitle'.tr()),
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
                              Text('settings.snackbar_saved'.tr()),
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
                      'settings.btn_save'.tr(),
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

  String _getLanguageName(String code) {
    switch (code) {
      case 'en':
        return 'settings.lang_en_full'.tr();
      case 'si':
        return 'settings.lang_si_full'.tr();
      case 'ta':
        return 'settings.lang_ta_full'.tr();
      default:
        return 'settings.lang_en_full'.tr();
    }
  }

  String _getThemeName(String theme) {
    switch (theme) {
      case 'light':
        return 'settings.theme_light'.tr();
      case 'dark':
        return 'settings.theme_dark'.tr();
      case 'system':
        return 'settings.theme_system'.tr();
      default:
        return 'settings.theme_system'.tr();
    }
  }
}
