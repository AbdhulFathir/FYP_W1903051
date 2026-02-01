import 'package:flutter/material.dart';

/// Provides the current locale and a way to change it from anywhere in the app.
class AppLocaleScope extends InheritedWidget {
  const AppLocaleScope({
    super.key,
    required this.locale,
    required this.setLocale,
    required super.child,
  });

  final Locale? locale;
  final void Function(Locale? locale) setLocale;

  static AppLocaleScope? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AppLocaleScope>();
  }

  @override
  bool updateShouldNotify(AppLocaleScope oldWidget) {
    return locale != oldWidget.locale;
  }
}
