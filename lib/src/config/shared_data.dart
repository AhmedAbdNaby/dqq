import 'package:dqq/src/config/core/enums.dart';
import 'package:flutter/material.dart';

import 'localization/app_localization.dart';


class SharedData {
  //||... current_user ...||
  // static User? currentUser;

  //||... app opened by ...||
  static AppOpenedBy appOpenedBy = AppOpenedBy.user;

  //||... navigation key ...||
  static GlobalKey<NavigatorState>? navigationKey;

  //||... localization ...||
  static late AppLocalizations appLocalization;

  // chat id.
  static int? chatId;
}
