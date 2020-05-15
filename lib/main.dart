import 'package:flutter/material.dart';
import 'package:ecomm/pages/home.dart';
import 'package:ecomm/pages/splash_screen.dart';
import 'package:ecomm/pages/intro_screen.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
//import 'package:ecomm/pages/login.dart';



var routes = <String, WidgetBuilder>{

  "/home": (BuildContext context) => HomePage(),
//"/login":(BuildContext context)  => SignInPage(),
  "/intro": (BuildContext context) => IntroScreen(),
  
};


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new DynamicTheme(
      defaultBrightness: Brightness.light,
      data: (brightness) => new ThemeData(
        primarySwatch: Colors.indigo,
        brightness: brightness,
      ),
      themedWidgetBuilder: (context, theme) {
        return new MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: theme,
          home: SplashScreen(),
          routes: routes,
        );
      }
    );
  }
  
}