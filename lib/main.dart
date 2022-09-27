import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seledriaarduino/pages/splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (context, _) {
        var child = _!;
        final navigatorKey = child.key as GlobalKey<NavigatorState>;
        child = Toast(child: child, navigatorKey: navigatorKey);
        child = FlashTheme(
          child: child,
          flashDialogTheme: const FlashDialogThemeData(),
        );
        return child;
      },
      home: SplashPage(),
    );
  }
}
