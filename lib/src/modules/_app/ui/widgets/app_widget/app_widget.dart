
import 'package:device_preview/device_preview.dart';
import 'package:dqq/src/modules/_app/app_router.dart';
import 'package:dqq/src/modules/_app/ui/widgets/app_widget/app_widget_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../../../../../config/constants.dart';
import '../../../../../config/localization/app_localization.dart';
import '../../../../../config/shared_data.dart';
import '../../../../../config/theming/app_theme.dart';
import '../../../../../managers/shared_preferences_manager.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Selector<AppWidgetController, bool>(
      selector: (_, value) => value.nApp,
      builder: (_, nApp, __) => ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) => MaterialApp(
          theme: AppTheme.lightTheme(),
          // darkTheme: AppTheme.darkTheme(),
          // themeMode: SharedPreferencesManager.instance.isDarkModeEnabled()
          //     ? ThemeMode.dark
          //     : ThemeMode.light,
          locale: Locale(
            SharedPreferencesManager.instance.getAppLang() ??
                Constants.sharedPreferencesAppLangDefaultValue,
          ),
          builder: DevicePreview.appBuilder,
          supportedLocales:
              Constants.supportedLocales.keys.map((e) => Locale(e)),
          navigatorKey: SharedData.navigationKey,
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          title: Constants.appName,
          onGenerateRoute: AppRouter.onGenerateRoute,
          initialRoute: AppRouter.splashScreen,
        ),
      ),
    );
  }
}
