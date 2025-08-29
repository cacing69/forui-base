// TOAST
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:forui/forui.dart';

void showForuiToast({
  required BuildContext context,
  required Widget title,
  Widget? description,
}) {
  showFToast(
    context: context,
    alignment: FToastAlignment.topCenter,
    title: title,
    description: description,
  );
}

void showFlutterToast({
  required BuildContext context,
  required String message,
}) {
  Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.TOP,
    timeInSecForIosWeb: 1,
    backgroundColor: context.theme.colors.background,
    textColor: context.theme.colors.foreground,
    fontSize: context.theme.typography.base.fontSize,
  );
}

void showComingSoonFlutterToast(BuildContext context) {
  showFlutterToast(context: context, message: "Coming soon!");
}
