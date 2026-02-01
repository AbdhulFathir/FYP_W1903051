// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Localization Research Project';

  @override
  String get welcomeTitle => 'Welcome to Localization Research';

  @override
  String version(String version) {
    return 'Version $version';
  }

  @override
  String get welcomeDescription =>
      'This application demonstrates built-in Flutter localization using gen-l10n and ARB files. Explore different screens to experience multilingual support in action.';

  @override
  String get quickNavigation => 'Quick Navigation';

  @override
  String get itemsList => 'Items List';

  @override
  String get browseCollection => 'Browse through our collection';

  @override
  String get settings => 'Settings';

  @override
  String get customizeExperience => 'Customize your experience';

  @override
  String get about => 'About';

  @override
  String get learnMore => 'Learn more about the app';

  @override
  String get languages => 'Languages';

  @override
  String get screens => 'Screens';

  @override
  String get items => 'Items';

  @override
  String get productCatalog => 'Product Catalog';

  @override
  String itemsAvailable(int count) {
    return '$count items available';
  }

  @override
  String get tapItemInfo =>
      'Tap on any item to view detailed information, specifications, and related products.';

  @override
  String get loadMoreItems => 'Load More Items';

  @override
  String reviews(int count) {
    return '($count)';
  }

  @override
  String get available => 'Available';

  @override
  String get limitedStock => 'Limited Stock';

  @override
  String get newArrival => 'New Arrival';

  @override
  String get bestSeller => 'Best Seller';

  @override
  String reviewsCount(int count) {
    return '$count reviews';
  }

  @override
  String get description => 'Description';

  @override
  String get specifications => 'Specifications';

  @override
  String get productId => 'Product ID';

  @override
  String get category => 'Category';

  @override
  String get status => 'Status';

  @override
  String get price => 'Price';

  @override
  String get rating => 'Rating';

  @override
  String get reviewsLabel => 'Reviews';

  @override
  String customerReviews(int count) {
    return '$count customer reviews';
  }

  @override
  String get tags => 'Tags';

  @override
  String get relatedProducts => 'Related Products';

  @override
  String get addToFavorites => 'Add to Favorites';

  @override
  String get addedToFavorites => 'Added to favorites';

  @override
  String get addToCart => 'Add to Cart';

  @override
  String get addedToCart => 'Added to cart successfully';

  @override
  String get customizeAppExperience => 'Customize your app experience';

  @override
  String get configurePreferences =>
      'Configure your application preferences. Change language, adjust display settings, manage notifications, and customize your experience.';

  @override
  String get languageSettings => 'Language Settings';

  @override
  String get selectLanguage => 'Select Language';

  @override
  String get english => 'English';

  @override
  String get sinhala => 'සිංහල';

  @override
  String get tamil => 'தமிழ்';

  @override
  String get displaySettings => 'Display Settings';

  @override
  String get themeMode => 'Theme Mode';

  @override
  String get lightMode => 'Light Mode';

  @override
  String get darkMode => 'Dark Mode';

  @override
  String get systemDefault => 'System Default';

  @override
  String get notifications => 'Notifications';

  @override
  String get enableNotifications => 'Enable Notifications';

  @override
  String get notificationsDescription =>
      'Receive updates about new features, important announcements, and personalized content recommendations.';

  @override
  String get security => 'Security';

  @override
  String get biometricAuthentication => 'Biometric Authentication';

  @override
  String get biometricDescription =>
      'Use fingerprint or face recognition to secure your app.';

  @override
  String get dataSync => 'Data & Sync';

  @override
  String get autoSync => 'Auto Sync';

  @override
  String get autoSyncDescription =>
      'Automatically sync your data across all devices.';

  @override
  String get saveSettings => 'Save Settings';

  @override
  String get settingsSaved => 'Settings saved successfully';

  @override
  String get overview => 'Overview';

  @override
  String get aboutDescription =>
      'This application is part of a comprehensive research project comparing different localization methods in Flutter. This prototype demonstrates Flutter\'s built-in localization system using gen-l10n and ARB files. The application supports multiple languages and showcases best practices for internationalization in modern mobile applications.';

  @override
  String get technicalDetails => 'Technical Details';

  @override
  String get technologyStack => 'Technology Stack';

  @override
  String get techDescription =>
      'Built with Flutter framework using the gen-l10n code generation tool. Localization strings are managed through ARB (Application Resource Bundle) files, which provide a standardized format for managing translations. The system supports compile-time localization with type-safe access to localized strings through generated code.';

  @override
  String get flutterSdk => 'Flutter SDK';

  @override
  String get flutterSdkDescription =>
      'Latest stable version with Material 3 design';

  @override
  String get keyFeatures => 'Key Features';

  @override
  String get multiLanguageSupport => 'Multi-language Support';

  @override
  String get multiLanguageDescription =>
      'Full support for English, Sinhala, and Tamil languages with comprehensive string coverage';

  @override
  String get typeSafeLocalization => 'Type-Safe Localization';

  @override
  String get typeSafeDescription =>
      'Compile-time type checking ensures error-free localization access';

  @override
  String get runtimeLanguageSwitching => 'Runtime Language Switching';

  @override
  String get runtimeSwitchingDescription =>
      'Seamless language switching without app restart';

  @override
  String get comprehensiveCoverage => 'Comprehensive Coverage';

  @override
  String get coverageDescription =>
      'All UI elements and content are fully localized';

  @override
  String get performanceOptimized => 'Performance Optimized';

  @override
  String get performanceDescription =>
      'Efficient localization system with minimal overhead';

  @override
  String get contactInformation => 'Contact Information';

  @override
  String get email => 'Email';

  @override
  String get website => 'Website';

  @override
  String get githubRepository => 'GitHub Repository';

  @override
  String get emailCopied => 'Email address copied to clipboard';

  @override
  String get copyright => '© 2026 Research Project. All rights reserved.';

  @override
  String get premiumProductDescription =>
      'This premium product features exceptional quality and craftsmanship. Designed with attention to detail, it offers outstanding performance and durability. Perfect for both professional and personal use, this item represents the perfect balance between functionality and style.';

  @override
  String item(int number) {
    return 'Item $number';
  }

  @override
  String premiumQualityDescription(String category) {
    return 'Premium quality $category item with exceptional features. This product offers outstanding value and performance. Perfect for everyday use and designed to meet your highest expectations.';
  }

  @override
  String ratingOutOfFive(String rating) {
    return '$rating / 5.0';
  }
}
