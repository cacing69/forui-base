// TOAST
import 'package:fluttertoast/fluttertoast.dart';
import 'package:forui/forui.dart';

void showFlutterToast({required FThemeData theme, required String message}) {
  Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.TOP,
    timeInSecForIosWeb: 1,
    backgroundColor: theme.colors.background,
    textColor: theme.colors.foreground,
    fontSize: theme.typography.base.fontSize,
  );
}

void showComingSoonFlutterToast(FThemeData theme) {
  Fluttertoast.showToast(
    msg: "Coming soon!",
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.TOP,
    timeInSecForIosWeb: 1,
    backgroundColor: theme.colors.background,
    textColor: theme.colors.foreground,
    fontSize: theme.typography.base.fontSize,
  );
}
