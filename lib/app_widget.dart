//libs
import 'package:devmagic_app/pages/home_screen/home_screen_page.dart';
import 'package:flutter/material.dart';

//files
import 'package:devmagic_app/pages/splash_screen/splash_screen_page.dart';

class AppWidget extends StatefulWidget {
  AppWidget({Key? key}) : super(key: key);

  @override
  _AppWidgetState createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Devmagic App",
      initialRoute: "/splash",
      routes: {
        "/splash": (context) => SplashPage(),
        "/home": (context) => HomeScreen(),
      },
    );
  }
}
