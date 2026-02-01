import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_si.dart';
import 'app_localizations_ta.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('si'),
    Locale('ta'),
  ];

  /// The title of the application
  ///
  /// In en, this message translates to:
  /// **'Localization Research Project'**
  String get appTitle;

  /// Welcome title on home screen
  ///
  /// In en, this message translates to:
  /// **'Welcome to Localization Research'**
  String get welcomeTitle;

  /// Version number
  ///
  /// In en, this message translates to:
  /// **'Version {version}'**
  String version(String version);

  /// Welcome description text
  ///
  /// In en, this message translates to:
  /// **'This application demonstrates built-in Flutter localization using gen-l10n and ARB files. Explore different screens to experience multilingual support in action.'**
  String get welcomeDescription;

  /// Quick navigation section title
  ///
  /// In en, this message translates to:
  /// **'Quick Navigation'**
  String get quickNavigation;

  /// Items list navigation card title
  ///
  /// In en, this message translates to:
  /// **'Items List'**
  String get itemsList;

  /// Items list navigation card subtitle
  ///
  /// In en, this message translates to:
  /// **'Browse through our collection'**
  String get browseCollection;

  /// Settings navigation card title
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// Settings navigation card subtitle
  ///
  /// In en, this message translates to:
  /// **'Customize your experience'**
  String get customizeExperience;

  /// About navigation card title
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get about;

  /// About navigation card subtitle
  ///
  /// In en, this message translates to:
  /// **'Learn more about the app'**
  String get learnMore;

  /// Languages stat label
  ///
  /// In en, this message translates to:
  /// **'Languages'**
  String get languages;

  /// Screens stat label
  ///
  /// In en, this message translates to:
  /// **'Screens'**
  String get screens;

  /// Items stat label
  ///
  /// In en, this message translates to:
  /// **'Items'**
  String get items;

  /// Product catalog title
  ///
  /// In en, this message translates to:
  /// **'Product Catalog'**
  String get productCatalog;

  /// Items available count
  ///
  /// In en, this message translates to:
  /// **'{count} items available'**
  String itemsAvailable(int count);

  /// Info text about tapping items
  ///
  /// In en, this message translates to:
  /// **'Tap on any item to view detailed information, specifications, and related products.'**
  String get tapItemInfo;

  /// Load more items button text
  ///
  /// In en, this message translates to:
  /// **'Load More Items'**
  String get loadMoreItems;

  /// Review count in parentheses
  ///
  /// In en, this message translates to:
  /// **'({count})'**
  String reviews(int count);

  /// Item status - available
  ///
  /// In en, this message translates to:
  /// **'Available'**
  String get available;

  /// Item status - limited stock
  ///
  /// In en, this message translates to:
  /// **'Limited Stock'**
  String get limitedStock;

  /// Item status - new arrival
  ///
  /// In en, this message translates to:
  /// **'New Arrival'**
  String get newArrival;

  /// Item status - best seller
  ///
  /// In en, this message translates to:
  /// **'Best Seller'**
  String get bestSeller;

  /// Review count text
  ///
  /// In en, this message translates to:
  /// **'{count} reviews'**
  String reviewsCount(int count);

  /// Description section title
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get description;

  /// Specifications section title
  ///
  /// In en, this message translates to:
  /// **'Specifications'**
  String get specifications;

  /// Product ID label
  ///
  /// In en, this message translates to:
  /// **'Product ID'**
  String get productId;

  /// Category label
  ///
  /// In en, this message translates to:
  /// **'Category'**
  String get category;

  /// Status label
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get status;

  /// Price label
  ///
  /// In en, this message translates to:
  /// **'Price'**
  String get price;

  /// Rating label
  ///
  /// In en, this message translates to:
  /// **'Rating'**
  String get rating;

  /// Reviews label
  ///
  /// In en, this message translates to:
  /// **'Reviews'**
  String get reviewsLabel;

  /// Customer reviews text
  ///
  /// In en, this message translates to:
  /// **'{count} customer reviews'**
  String customerReviews(int count);

  /// Tags section title
  ///
  /// In en, this message translates to:
  /// **'Tags'**
  String get tags;

  /// Related products section title
  ///
  /// In en, this message translates to:
  /// **'Related Products'**
  String get relatedProducts;

  /// Add to favorites button
  ///
  /// In en, this message translates to:
  /// **'Add to Favorites'**
  String get addToFavorites;

  /// Snackbar message for adding to favorites
  ///
  /// In en, this message translates to:
  /// **'Added to favorites'**
  String get addedToFavorites;

  /// Add to cart button
  ///
  /// In en, this message translates to:
  /// **'Add to Cart'**
  String get addToCart;

  /// Snackbar message for adding to cart
  ///
  /// In en, this message translates to:
  /// **'Added to cart successfully'**
  String get addedToCart;

  /// Settings screen subtitle
  ///
  /// In en, this message translates to:
  /// **'Customize your app experience'**
  String get customizeAppExperience;

  /// Settings info text
  ///
  /// In en, this message translates to:
  /// **'Configure your application preferences. Change language, adjust display settings, manage notifications, and customize your experience.'**
  String get configurePreferences;

  /// Language settings section title
  ///
  /// In en, this message translates to:
  /// **'Language Settings'**
  String get languageSettings;

  /// Select language title
  ///
  /// In en, this message translates to:
  /// **'Select Language'**
  String get selectLanguage;

  /// English language name
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get english;

  /// Sinhala language name
  ///
  /// In en, this message translates to:
  /// **'සිංහල'**
  String get sinhala;

  /// Tamil language name
  ///
  /// In en, this message translates to:
  /// **'தமிழ்'**
  String get tamil;

  /// Display settings section title
  ///
  /// In en, this message translates to:
  /// **'Display Settings'**
  String get displaySettings;

  /// Theme mode title
  ///
  /// In en, this message translates to:
  /// **'Theme Mode'**
  String get themeMode;

  /// Light mode option
  ///
  /// In en, this message translates to:
  /// **'Light Mode'**
  String get lightMode;

  /// Dark mode option
  ///
  /// In en, this message translates to:
  /// **'Dark Mode'**
  String get darkMode;

  /// System default theme option
  ///
  /// In en, this message translates to:
  /// **'System Default'**
  String get systemDefault;

  /// Notifications section title
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notifications;

  /// Enable notifications title
  ///
  /// In en, this message translates to:
  /// **'Enable Notifications'**
  String get enableNotifications;

  /// Notifications description
  ///
  /// In en, this message translates to:
  /// **'Receive updates about new features, important announcements, and personalized content recommendations.'**
  String get notificationsDescription;

  /// Security section title
  ///
  /// In en, this message translates to:
  /// **'Security'**
  String get security;

  /// Biometric authentication title
  ///
  /// In en, this message translates to:
  /// **'Biometric Authentication'**
  String get biometricAuthentication;

  /// Biometric authentication description
  ///
  /// In en, this message translates to:
  /// **'Use fingerprint or face recognition to secure your app.'**
  String get biometricDescription;

  /// Data & Sync section title
  ///
  /// In en, this message translates to:
  /// **'Data & Sync'**
  String get dataSync;

  /// Auto sync title
  ///
  /// In en, this message translates to:
  /// **'Auto Sync'**
  String get autoSync;

  /// Auto sync description
  ///
  /// In en, this message translates to:
  /// **'Automatically sync your data across all devices.'**
  String get autoSyncDescription;

  /// Save settings button
  ///
  /// In en, this message translates to:
  /// **'Save Settings'**
  String get saveSettings;

  /// Settings saved snackbar message
  ///
  /// In en, this message translates to:
  /// **'Settings saved successfully'**
  String get settingsSaved;

  /// Overview section title
  ///
  /// In en, this message translates to:
  /// **'Overview'**
  String get overview;

  /// About screen description
  ///
  /// In en, this message translates to:
  /// **'This application is part of a comprehensive research project comparing different localization methods in Flutter. This prototype demonstrates Flutter\'s built-in localization system using gen-l10n and ARB files. The application supports multiple languages and showcases best practices for internationalization in modern mobile applications.'**
  String get aboutDescription;

  /// Technical details section title
  ///
  /// In en, this message translates to:
  /// **'Technical Details'**
  String get technicalDetails;

  /// Technology stack title
  ///
  /// In en, this message translates to:
  /// **'Technology Stack'**
  String get technologyStack;

  /// Technology description
  ///
  /// In en, this message translates to:
  /// **'Built with Flutter framework using the gen-l10n code generation tool. Localization strings are managed through ARB (Application Resource Bundle) files, which provide a standardized format for managing translations. The system supports compile-time localization with type-safe access to localized strings through generated code.'**
  String get techDescription;

  /// Flutter SDK title
  ///
  /// In en, this message translates to:
  /// **'Flutter SDK'**
  String get flutterSdk;

  /// Flutter SDK description
  ///
  /// In en, this message translates to:
  /// **'Latest stable version with Material 3 design'**
  String get flutterSdkDescription;

  /// Key features section title
  ///
  /// In en, this message translates to:
  /// **'Key Features'**
  String get keyFeatures;

  /// Multi-language support feature title
  ///
  /// In en, this message translates to:
  /// **'Multi-language Support'**
  String get multiLanguageSupport;

  /// Multi-language support description
  ///
  /// In en, this message translates to:
  /// **'Full support for English, Sinhala, and Tamil languages with comprehensive string coverage'**
  String get multiLanguageDescription;

  /// Type-safe localization feature title
  ///
  /// In en, this message translates to:
  /// **'Type-Safe Localization'**
  String get typeSafeLocalization;

  /// Type-safe localization description
  ///
  /// In en, this message translates to:
  /// **'Compile-time type checking ensures error-free localization access'**
  String get typeSafeDescription;

  /// Runtime language switching feature title
  ///
  /// In en, this message translates to:
  /// **'Runtime Language Switching'**
  String get runtimeLanguageSwitching;

  /// Runtime language switching description
  ///
  /// In en, this message translates to:
  /// **'Seamless language switching without app restart'**
  String get runtimeSwitchingDescription;

  /// Comprehensive coverage feature title
  ///
  /// In en, this message translates to:
  /// **'Comprehensive Coverage'**
  String get comprehensiveCoverage;

  /// Comprehensive coverage description
  ///
  /// In en, this message translates to:
  /// **'All UI elements and content are fully localized'**
  String get coverageDescription;

  /// Performance optimized feature title
  ///
  /// In en, this message translates to:
  /// **'Performance Optimized'**
  String get performanceOptimized;

  /// Performance optimized description
  ///
  /// In en, this message translates to:
  /// **'Efficient localization system with minimal overhead'**
  String get performanceDescription;

  /// Contact information section title
  ///
  /// In en, this message translates to:
  /// **'Contact Information'**
  String get contactInformation;

  /// Email label
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// Website label
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website;

  /// GitHub repository label
  ///
  /// In en, this message translates to:
  /// **'GitHub Repository'**
  String get githubRepository;

  /// Email copied snackbar message
  ///
  /// In en, this message translates to:
  /// **'Email address copied to clipboard'**
  String get emailCopied;

  /// Copyright text
  ///
  /// In en, this message translates to:
  /// **'© 2026 Research Project. All rights reserved.'**
  String get copyright;

  /// Premium product description text
  ///
  /// In en, this message translates to:
  /// **'This premium product features exceptional quality and craftsmanship. Designed with attention to detail, it offers outstanding performance and durability. Perfect for both professional and personal use, this item represents the perfect balance between functionality and style.'**
  String get premiumProductDescription;

  /// Item title with number
  ///
  /// In en, this message translates to:
  /// **'Item {number}'**
  String item(int number);

  /// Premium quality item description
  ///
  /// In en, this message translates to:
  /// **'Premium quality {category} item with exceptional features. This product offers outstanding value and performance. Perfect for everyday use and designed to meet your highest expectations.'**
  String premiumQualityDescription(String category);

  /// Rating out of 5.0
  ///
  /// In en, this message translates to:
  /// **'{rating} / 5.0'**
  String ratingOutOfFive(String rating);
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'si', 'ta'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'si':
      return AppLocalizationsSi();
    case 'ta':
      return AppLocalizationsTa();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
