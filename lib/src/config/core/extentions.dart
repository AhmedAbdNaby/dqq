
import '../shared_data.dart';

extension ThemingAndTranslation on String {
  // Color get th => SharedData.currentTheme[this] ?? Colors.red;
  String get tr => SharedData.appLocalization.translate(this) ?? this;
}
