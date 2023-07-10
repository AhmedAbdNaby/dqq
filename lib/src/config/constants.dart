
class Constants {
  //||... app name ...||
  static const String appName = "Sellha";

//           ||-------------------------------------------||

  //||... shared preferences ...||
  static const String sharedPreferencesAppLang = 'appLang';
  static const String sharedPreferencesAppLangDefaultValue = 'en';
  static const String sharedPreferencesAppColor = 'appColor';
  static const int sharedPreferencesAppColorDefaultValue = 0xffF1734F;
  static const String sharedPreferencesIsNotificationEnabled =
      'isNotificationsEnabled';
  static const bool sharedPreferencesIsNotificationEnabledDefaultValue = true;
  static const String sharedPreferencesIsDarkModeEnabled = 'isDarkModeEnabled';
  static const bool sharedPreferencesIsDarkModeEnabledDefaultValue = false;
  static const String sharedPreferencesUserData = 'userData';

  //||... shared preferences ...||

//           ||-------------------------------------------||

  //||... api ...||
  // production base url.
  //   static const String baseUrl = 'http://elixir-kombucha.com/';
  // development base url.
  static const String baseUrl = 'https://sellha.alialqrinawi.me/';
  static const String apiUrl = '${baseUrl}api/V1/';

  //||... api ...||

//           ||-------------------------------------------||

  //||...  supported locales ...||
  static const Map<String, String> supportedLocales = {
    'ar': 'العربية',
    'en': 'English',
  };

  //||...  supported locales ...||

//           ||-------------------------------------------||

  //||... assets ...||
  static const String assetsImagesPath = 'assets/images/';
  static const String assetsVectorsPath = 'assets/vectors/';
  static const String assetsAnimationsPath = 'assets/animations/';
//||... assets ...||

//           ||-------------------------------------------||


}
