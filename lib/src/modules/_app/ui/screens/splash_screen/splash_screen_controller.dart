import 'package:flutter/cupertino.dart';
import '../../../../../config/api_config/api.dart';
class SplashScreenController with ChangeNotifier {
  // constructor fields.

  final BuildContext context;

  // constructor.
  SplashScreenController({
    required this.context,
  }) {
    init();
  }

  // init.
  void init() async {
    // await StartUp.initAfterAppBuilding();
    Future.delayed(const Duration(seconds: 1), () async {
      // SharedPreferencesManager.instance.clearUserData();
      // SharedPreferencesManager.instance.getUserData();
      // init api.
      Api.init();
      // if (SharedData.currentUser == null) {
      //   N.offAllNamed(AuthRouter.signInScreen);
      // } else {
      //   N.offAllNamed(AppRouter.mainScreen);
      // }
    });
  }
}
