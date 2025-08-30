// TOAST
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:forui/forui.dart';

void showForuiToast({
  required BuildContext context,
  required Widget title,
  Widget? description,
  Duration duration = const Duration(milliseconds: 1500),
}) {
  showFToast(
    context: context,
    alignment: FToastAlignment.topCenter,
    duration: duration,
    title: title,
    description: description,
  );
}

void showFlutterToast({BuildContext? context, required String message}) {
  Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.TOP,
    timeInSecForIosWeb: 1,
    backgroundColor: context?.theme.colors.background,
    textColor: context?.theme.colors.foreground,
    fontSize: context?.theme.typography.base.fontSize,
  );
}

void showComingSoonFlutterToast(BuildContext context) {
  showFlutterToast(context: context, message: "Coming soon!");
}

bool parseBool(String value, {bool defaultValue = false}) {
  switch (value.toLowerCase()) {
    case 'true':
      return true;
    case 'false':
      return false;
    case 'yes':
      return true;
    case 'no':
      return false;
    case '1':
      return true;
    case '0':
      return false;
    case 'on':
      return true;
    case 'off':
      return false;
    default:
      return defaultValue;
  }
}
