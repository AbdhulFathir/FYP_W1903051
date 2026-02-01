// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tamil (`ta`).
class AppLocalizationsTa extends AppLocalizations {
  AppLocalizationsTa([String locale = 'ta']) : super(locale);

  @override
  String get appTitle => 'மொழியாக்க ஆராய்ச்சி திட்டம்';

  @override
  String get welcomeTitle => 'மொழியாக்க ஆராய்ச்சிக்கு வரவேற்கிறோம்';

  @override
  String version(String version) {
    return 'பதிப்பு $version';
  }

  @override
  String get welcomeDescription =>
      'இந்த பயன்பாடு gen-l10n மற்றும் ARB கோப்புகளைப் பயன்படுத்தி Flutter இன் உள்ளமைக்கப்பட்ட மொழியாக்கத்தை நிரூபிக்கிறது. பல மொழி ஆதரவை செயல்படுத்த பல்வேறு திரைகளை ஆராயுங்கள்.';

  @override
  String get quickNavigation => 'விரைவு வழிசெலுத்தல்';

  @override
  String get itemsList => 'பொருட்கள் பட்டியல்';

  @override
  String get browseCollection => 'எங்கள் சேகரிப்பு மூலம் உலாவுங்கள்';

  @override
  String get settings => 'அமைப்புகள்';

  @override
  String get customizeExperience => 'உங்கள் அனுபவத்தை தனிப்பயனாக்குங்கள்';

  @override
  String get about => 'பற்றி';

  @override
  String get learnMore => 'பயன்பாட்டைப் பற்றி மேலும் அறிக';

  @override
  String get languages => 'மொழிகள்';

  @override
  String get screens => 'திரைகள்';

  @override
  String get items => 'பொருட்கள்';

  @override
  String get productCatalog => 'தயாரிப்பு பட்டியல்';

  @override
  String itemsAvailable(int count) {
    return '$count பொருட்கள் கிடைக்கின்றன';
  }

  @override
  String get tapItemInfo =>
      'விரிவான தகவல், விவரக்குறிப்புகள் மற்றும் தொடர்புடைய தயாரிப்புகளைப் பார்க்க எந்தப் பொருளையும் தட்டவும்.';

  @override
  String get loadMoreItems => 'மேலும் பொருட்களை ஏற்றவும்';

  @override
  String reviews(int count) {
    return '($count)';
  }

  @override
  String get available => 'கிடைக்கிறது';

  @override
  String get limitedStock => 'வரையறுக்கப்பட்ட பங்கு';

  @override
  String get newArrival => 'புதிய வருகை';

  @override
  String get bestSeller => 'சிறந்த விற்பனையாளர்';

  @override
  String reviewsCount(int count) {
    return '$count மதிப்பீடுகள்';
  }

  @override
  String get description => 'விளக்கம்';

  @override
  String get specifications => 'விவரக்குறிப்புகள்';

  @override
  String get productId => 'தயாரிப்பு அடையாளம்';

  @override
  String get category => 'வகை';

  @override
  String get status => 'நிலை';

  @override
  String get price => 'விலை';

  @override
  String get rating => 'மதிப்பீடு';

  @override
  String get reviewsLabel => 'மதிப்பீடுகள்';

  @override
  String customerReviews(int count) {
    return '$count வாடிக்கையாளர் மதிப்பீடுகள்';
  }

  @override
  String get tags => 'குறிச்சொற்கள்';

  @override
  String get relatedProducts => 'தொடர்புடைய தயாரிப்புகள்';

  @override
  String get addToFavorites => 'விருப்பங்களில் சேர்க்க';

  @override
  String get addedToFavorites => 'விருப்பங்களில் சேர்க்கப்பட்டது';

  @override
  String get addToCart => 'கார்ட்டில் சேர்க்க';

  @override
  String get addedToCart => 'கார்ட்டில் வெற்றிகரமாக சேர்க்கப்பட்டது';

  @override
  String get customizeAppExperience =>
      'உங்கள் பயன்பாட்டின் அனுபவத்தை தனிப்பயனாக்குங்கள்';

  @override
  String get configurePreferences =>
      'உங்கள் பயன்பாட்டு விருப்பத்தேர்வுகளை கட்டமைக்கவும். மொழியை மாற்றவும், காட்சி அமைப்புகளை சரிசெய்யவும், அறிவிப்புகளை நிர்வகிக்கவும் மற்றும் உங்கள் அனுபவத்தை தனிப்பயனாக்கவும்.';

  @override
  String get languageSettings => 'மொழி அமைப்புகள்';

  @override
  String get selectLanguage => 'மொழியைத் தேர்ந்தெடுக்கவும்';

  @override
  String get english => 'ஆங்கிலம்';

  @override
  String get sinhala => 'සිංහල';

  @override
  String get tamil => 'தமிழ்';

  @override
  String get displaySettings => 'காட்சி அமைப்புகள்';

  @override
  String get themeMode => 'தீம் பயன்முறை';

  @override
  String get lightMode => 'வெளிச்ச பயன்முறை';

  @override
  String get darkMode => 'இருள் பயன்முறை';

  @override
  String get systemDefault => 'கணினி இயல்புநிலை';

  @override
  String get notifications => 'அறிவிப்புகள்';

  @override
  String get enableNotifications => 'அறிவிப்புகளை இயக்கவும்';

  @override
  String get notificationsDescription =>
      'புதிய அம்சங்கள், முக்கியமான அறிவிப்புகள் மற்றும் தனிப்பயனாக்கப்பட்ட உள்ளடக்க பரிந்துரைகள் பற்றிய புதுப்பிப்புகளைப் பெறுங்கள்.';

  @override
  String get security => 'பாதுகாப்பு';

  @override
  String get biometricAuthentication => 'உயிரியல் அங்கீகாரம்';

  @override
  String get biometricDescription =>
      'உங்கள் பயன்பாட்டைப் பாதுகாக்க விரல் அச்சு அல்லது முக அங்கீகாரத்தைப் பயன்படுத்தவும்.';

  @override
  String get dataSync => 'தரவு மற்றும் ஒத்திசைவு';

  @override
  String get autoSync => 'தானியங்கி ஒத்திசைவு';

  @override
  String get autoSyncDescription =>
      'எல்லா சாதனங்களிலும் உங்கள் தரவை தானாக ஒத்திசைக்கவும்.';

  @override
  String get saveSettings => 'அமைப்புகளைச் சேமிக்கவும்';

  @override
  String get settingsSaved => 'அமைப்புகள் வெற்றிகரமாக சேமிக்கப்பட்டன';

  @override
  String get overview => 'கண்ணோட்டம்';

  @override
  String get aboutDescription =>
      'இந்த பயன்பாடு Flutter இல் வெவ்வேறு மொழியாக்க முறைகளை ஒப்பிடும் விரிவான ஆராய்ச்சி திட்டத்தின் ஒரு பகுதியாகும். இந்த முன்மாதிரி gen-l10n மற்றும் ARB கோப்புகளைப் பயன்படுத்தி Flutter இன் உள்ளமைக்கப்பட்ட மொழியாக்க அமைப்பை நிரூபிக்கிறது. பயன்பாடு பல மொழிகளை ஆதரிக்கிறது மற்றும் நவீன மொபைல் பயன்பாடுகளில் சர்வதேசமயமாக்கத்திற்கான சிறந்த நடைமுறைகளை வழங்குகிறது.';

  @override
  String get technicalDetails => 'தொழில்நுட்ப விவரங்கள்';

  @override
  String get technologyStack => 'தொழில்நுட்ப அடுக்கு';

  @override
  String get techDescription =>
      'gen-l10n குறியீடு உருவாக்க கருவியைப் பயன்படுத்தி Flutter கட்டமைப்புடன் கட்டப்பட்டது. மொழியாக்க சரங்கள் ARB (Application Resource Bundle) கோப்புகள் மூலம் நிர்வகிக்கப்படுகின்றன, இது மொழிபெயர்ப்புகளை நிர்வகிக்க ஒரு தரப்படுத்தப்பட்ட வடிவத்தை வழங்குகிறது. இந்த அமைப்பு உருவாக்கப்பட்ட குறியீடு மூலம் வகை-பாதுகாப்பான அணுகலுடன் தொகுப்பு-நேர மொழியாக்கத்தை ஆதரிக்கிறது.';

  @override
  String get flutterSdk => 'Flutter SDK';

  @override
  String get flutterSdkDescription =>
      'Material 3 வடிவமைப்புடன் சமீபத்திய நிலையான பதிப்பு';

  @override
  String get keyFeatures => 'முக்கிய அம்சங்கள்';

  @override
  String get multiLanguageSupport => 'பல-மொழி ஆதரவு';

  @override
  String get multiLanguageDescription =>
      'விரிவான சரம் உள்ளடக்கத்துடன் ஆங்கிலம், සිංහල மற்றும் தமிழ் மொழிகளுக்கு முழு ஆதரவு';

  @override
  String get typeSafeLocalization => 'வகை-பாதுகாப்பான மொழியாக்கம்';

  @override
  String get typeSafeDescription =>
      'தொகுப்பு-நேர வகை சரிபார்ப்பு பிழை-இல்லாத மொழியாக்க அணுகலை உறுதி செய்கிறது';

  @override
  String get runtimeLanguageSwitching => 'இயக்க நேர மொழி மாற்றம்';

  @override
  String get runtimeSwitchingDescription =>
      'பயன்பாட்டை மீண்டும் தொடங்காமல் மென்மையான மொழி மாற்றம்';

  @override
  String get comprehensiveCoverage => 'விரிவான உள்ளடக்கம்';

  @override
  String get coverageDescription =>
      'அனைத்து UI கூறுகள் மற்றும் உள்ளடக்கமும் முழுமையாக மொழியாக்கப்பட்டுள்ளன';

  @override
  String get performanceOptimized => 'செயல்திறன் மேம்படுத்தப்பட்டது';

  @override
  String get performanceDescription =>
      'குறைந்தபட்ச overhead உடன் திறமையான மொழியாக்க அமைப்பு';

  @override
  String get contactInformation => 'தொடர்பு தகவல்';

  @override
  String get email => 'மின்னஞ்சல்';

  @override
  String get website => 'வலைத்தளம்';

  @override
  String get githubRepository => 'GitHub களஞ்சியம்';

  @override
  String get emailCopied =>
      'மின்னஞ்சல் முகவரி கிளிப்போர்டுக்கு நகலெடுக்கப்பட்டது';

  @override
  String get copyright =>
      '© 2026 ஆராய்ச்சி திட்டம். அனைத்து உரிமைகளும் பாதுகாக்கப்பட்டுள்ளன.';

  @override
  String get premiumProductDescription =>
      'இந்த பிரீமியம் தயாரிப்பு விதிவிலக்கான தரம் மற்றும் கைவினைத்திறனைக் கொண்டுள்ளது. விவரங்களுக்கு கவனம் செலுத்தி வடிவமைக்கப்பட்ட, இது சிறந்த செயல்திறன் மற்றும் நீடித்த தன்மையை வழங்குகிறது. தொழில்முறை மற்றும் தனிப்பட்ட பயன்பாட்டிற்கு சிறந்தது, இந்த உருப்படி செயல்பாட்டு மற்றும் பாணிக்கு இடையே சிறந்த சமநிலையைக் குறிக்கிறது.';

  @override
  String item(int number) {
    return 'பொருள் $number';
  }

  @override
  String premiumQualityDescription(String category) {
    return 'விதிவிலக்கான அம்சங்களுடன் பிரீமியம் தர $category பொருள். இந்த தயாரிப்பு சிறந்த மதிப்பு மற்றும் செயல்திறனை வழங்குகிறது. அன்றாட பயன்பாட்டிற்கு சிறந்தது மற்றும் உங்கள் உயர்ந்த எதிர்பார்ப்புகளை பூர்த்தி செய்ய வடிவமைக்கப்பட்டது.';
  }

  @override
  String ratingOutOfFive(String rating) {
    return '$rating / 5.0';
  }
}
