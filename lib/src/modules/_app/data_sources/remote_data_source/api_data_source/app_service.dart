class AppService {
  static AppService? _instance;

  // private constructor.
  AppService._();

  // singleton pattern.
  static AppService get instance => _instance ?? (_instance = AppService._());

/////////////////////////////////////////////////////////////////////////////////

}
