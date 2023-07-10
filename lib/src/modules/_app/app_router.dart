import 'package:dqq/src/modules/_app/ui/screens/splash_screen/splash_screen.dart';
import 'package:dqq/src/modules/_app/ui/screens/splash_screen/splash_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class AppRouter {
  static const String splashScreen = '/app-SplashScreen';
  static const String mainScreen = '/app-MainScreen';

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    late final String screenName = settings.name!;
    late final dynamic screenArgs = settings.arguments;
    if (screenName.startsWith('/app-')) {
      return router(screenName: screenName, args: screenArgs);
    }else {
      return MaterialPageRoute(
        builder: (_) {
          return const Scaffold(
            body: Center(
              child: Text('route not found'),
            ),
          );
        },
      );
    }
  }

  // router.
  static Route<dynamic> router({
    required String screenName,
    required dynamic args,
  }) {
    if (screenName == splashScreen) {
      return MaterialPageRoute(
        builder: (_) => ChangeNotifierProvider<SplashScreenController>(
          create: (_) => SplashScreenController(context: _),
          child: const SplashScreen(),
        ),
      );
    }else {
      return MaterialPageRoute(
        builder: (_) {
          return const Scaffold(
            body: Center(
              child: Text('app route not found'),
            ),
          );
        },
      );
    }
  }
}
