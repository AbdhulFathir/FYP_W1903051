import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Configure your application preferences. Change language, adjust display settings, manage notifications, and customize your experience.',
                  style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            const SizedBox(height: 24),
            Text(
              'Language Settings',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 12),
            Card(
              child: Column(
                children: [
                  const ListTile(
                    leading: Icon(Icons.language),
                    title: Text('Select Language'),
                    subtitle: Text('Current Language: English'),
                  ),
                  const Divider(height: 1),
                  RadioListTile<String>(
                    title: const Text('English'),
                    value: 'en',
                    groupValue: 'en',
                    onChanged: (String? value) {
                      // Language switching can be implemented if needed
                    },
                  ),
                  RadioListTile<String>(
                    title: const Text('සිංහල'),
                    value: 'si',
                    groupValue: 'en',
                    onChanged: (String? value) {
                      // Language switching can be implemented if needed
                    },
                  ),
                  RadioListTile<String>(
                    title: const Text('தமிழ்'),
                    value: 'ta',
                    groupValue: 'en',
                    onChanged: (String? value) {
                      // Language switching can be implemented if needed
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Text(
              'Display Settings',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 12),
            Card(
              child: Column(
                children: [
                  const ListTile(
                    leading: Icon(Icons.brightness_6),
                    title: Text('Theme Mode'),
                    subtitle: Text('System Default'),
                  ),
                  const Divider(height: 1),
                  RadioListTile<String>(
                    title: const Text('Light'),
                    value: 'light',
                    groupValue: 'system',
                    onChanged: (String? value) {
                      // Theme switching can be implemented if needed
                    },
                  ),
                  RadioListTile<String>(
                    title: const Text('Dark'),
                    value: 'dark',
                    groupValue: 'system',
                    onChanged: (String? value) {
                      // Theme switching can be implemented if needed
                    },
                  ),
                  RadioListTile<String>(
                    title: const Text('System Default'),
                    value: 'system',
                    groupValue: 'system',
                    onChanged: (String? value) {
                      // Theme switching can be implemented if needed
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Text(
              'Notifications',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 12),
            Card(
              child: Column(
                children: [
                  SwitchListTile(
                    secondary: const Icon(Icons.notifications),
                    title: const Text('Enable Notifications'),
                    subtitle: const Text('Receive updates about new features, important announcements, and personalized content recommendations.'),
                    value: true,
                    onChanged: (bool value) {
                      // Notification toggle can be implemented
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Settings saved successfully.')),
                  );
                },
                icon: const Icon(Icons.save),
                label: const Text('Save'),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
