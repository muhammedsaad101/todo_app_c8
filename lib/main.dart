import 'package:flutter/material.dart';
import 'package:todo_app_c8/home_layout/home_layout.dart';
import 'package:todo_app_c8/shared/styles/my_theme.dart';
import 'package:todo_app_c8/screens/splash_screen.dart';

void main(){
  runApp(MyApplication());
}

class MyApplication extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        SplashScreen.routeName : (_)=> SplashScreen(),
        HomeLayout.routeName : (_)=> HomeLayout(),
      },
      initialRoute: HomeLayout.routeName,
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: ThemeMode.light,
    );
  }
}