import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Icon(
                      Icons.info_outline,
                      size: 64,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Localization Comparison App',
                      style: Theme.of(context).textTheme.headlineSmall,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Version 1.0.0',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Colors.grey[600],
                          ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),
            Text(
              'This application is part of a research project comparing different localization methods in Flutter. This prototype uses Flutter\'s built-in localization system with gen-l10n and ARB files. The application supports multiple languages and demonstrates best practices for internationalization in mobile applications.',
              style: Theme.of(context).textTheme.bodyLarge,
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 24),
            Text(
              'Technical Details',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 12),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Built with Flutter framework using the gen-l10n code generation tool. Localization strings are managed through ARB (Application Resource Bundle) files, which provide a standardized format for managing translations. The system supports compile-time localization with type-safe access to localized strings through generated code.',
                  style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            const SizedBox(height: 24),
            Text(
              'Features',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 12),
            Card(
              child: Column(
                children: [
                  const ListTile(
                    leading: Icon(Icons.language, color: Colors.blue),
                    title: Text('Multi-language support (English, Sinhala, Tamil)'),
                  ),
                  const Divider(height: 1),
                  const ListTile(
                    leading: Icon(Icons.security, color: Colors.green),
                    title: Text('Type-safe localization access'),
                  ),
                  const Divider(height: 1),
                  const ListTile(
                    leading: Icon(Icons.swap_horiz, color: Colors.orange),
                    title: Text('Runtime language switching'),
                  ),
                  const Divider(height: 1),
                  const ListTile(
                    leading: Icon(Icons.check_circle, color: Colors.purple),
                    title: Text('Comprehensive string coverage'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Text(
              'Contact',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 12),
            Card(
              child: Column(
                children: [
                  const ListTile(
                    leading: Icon(Icons.email),
                    title: Text('Email: info@example.com'),
                  ),
                  const Divider(height: 1),
                  const ListTile(
                    leading: Icon(Icons.language),
                    title: Text('Website: www.example.com'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
