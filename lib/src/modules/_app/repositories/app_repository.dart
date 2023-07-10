class AppRepository {
  static AppRepository? _instance;

  // private constructor.
  AppRepository._();

  // singleton pattern.
  static AppRepository get instance =>
      _instance ?? (_instance = AppRepository._());

/////////////////////////////////////////////////////////////////////////////////

}
