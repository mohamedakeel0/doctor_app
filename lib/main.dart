import 'package:doctor_app/core/resources/color_manager.dart';
import 'package:doctor_app/core/resources/routes_manager.dart';
import 'package:doctor_app/core/resources/theme_manager.dart';
import 'package:doctor_app/features/home/presentation/screens/home_screen.dart';
import 'package:doctor_app/features/myorders.dart';
import 'package:doctor_app/features/splash/screens/splash_screen.dart';
import 'package:doctor_app/features/task.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {

  // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
  //   systemNavigationBarColor: ColorManager.primary, // navigation bar color
  //   statusBarColor: ColorManager.primary,  // status bar color
  // ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(   onGenerateRoute: RouteGenerator.getRoute,debugShowCheckedModeBanner: false,
  theme: getApplicationTheme(),themeMode:ThemeMode.light ,

      home: const HomePageWidget(),
    );
  }
}


