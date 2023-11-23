import 'package:doctor_app/core/resources/color_manager.dart';
import 'package:doctor_app/core/resources/font_manager.dart';
import 'package:doctor_app/core/resources/values_manager.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
ThemeData getApplicationTheme(){
  return ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.blue,
      brightness: Brightness.dark,
      primary: ColorManager.primary,
      secondary: ColorManager.primary,
      onSecondary: ColorManager.primary, // FAB Icon color if FABTheme not provided like below
    ),
    tabBarTheme: TabBarTheme(indicator:  BoxDecoration(
      border: Border(
        bottom: BorderSide(
          color: ColorManager.white,
          width: AppSize.s2,
        ),
      ),
    ),labelPadding:const EdgeInsets.only(left: AppPadding.p8) ,
    ),scaffoldBackgroundColor: ColorManager.white,
//main colors
    primaryColor: ColorManager.white,

    splashColor: ColorManager.primary,
    //cardview theme
    cardTheme: CardTheme(color: ColorManager.white,shadowColor: ColorManager.grey,elevation: AppSize.s5),
    //app bar theme
    appBarTheme: AppBarTheme(
      titleSpacing: 20,
      backgroundColor: Colors.white,

      elevation: 0.0,iconTheme: IconThemeData(color: ColorManager.black,),

      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: ColorManager.primary ,
        statusBarIconBrightness: Brightness.dark, //<-- For Android SEE HERE (dark icons)
        statusBarBrightness: Brightness.light,),
      centerTitle: true,

      shadowColor: ColorManager.primary,
      titleTextStyle: TextStyle(color: ColorManager.black,fontSize: FontSize.s16),
    ),bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: ColorManager.backGround,

      selectedItemColor: ColorManager.primary,
      unselectedItemColor:ColorManager.grey,
      elevation: 30),
    //button theme
    buttonTheme: ButtonThemeData(shape: StadiumBorder(),
      disabledColor: ColorManager.grey1,buttonColor: ColorManager.primary,splashColor: ColorManager.grey,
    ),
    //elevated button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(textStyle:TextStyle(color: ColorManager.white,fontSize: FontSize.s17),
        primary: ColorManager.primary,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSize.s12)),
      ),),
    //text theme
    textTheme: TextTheme(subtitle1:
    const TextStyle(
      fontSize: FontSize.s50,
      color: Colors.white,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.15,
    ),subtitle2: const  TextStyle( fontSize: FontSize.s14,
      color: Colors.white,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.15,),headline1: TextStyle( color:  ColorManager.primary,fontWeight: FontWeight.w400,fontSize: FontSize.s17,),headline2: TextStyle(color: ColorManager.white,fontSize:  FontSize.s18,fontWeight: FontWeight.w500),headline3:  TextStyle(
      fontSize: FontSize.s30,
      color: ColorManager.primary,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.15,
    ),headline5:  TextStyle(
      fontSize: FontSize.s30,
      color: Colors.black,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.15,
    ),headline4:const  TextStyle( fontSize: FontSize.s22,height: 1.5,
      color: Colors.black,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.15,),bodyText1: const  TextStyle( fontSize: FontSize.s20,
      color: Colors.grey,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.15,),headline6:   const TextStyle( fontSize: FontSize.s16,
      color: Colors.black,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.15,),
        bodyText2: TextStyle( fontSize: FontSize.s18,
          color: Colors.black,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.15,),caption:  TextStyle(fontSize: FontSize.s14,  color: ColorManager.error)
    ),
    //input decoration theme (text form field)
    inputDecorationTheme: InputDecorationTheme(
      // content Padding
      contentPadding: const EdgeInsets.all(AppPadding.p8),
//hint Style
      hintStyle: TextStyle(color: ColorManager.grey,fontSize: FontSize.s17),
      //label Style
      labelStyle:TextStyle(color: ColorManager.grey,fontSize: FontSize.s14),
      errorStyle: TextStyle(color: ColorManager.white,fontSize: FontSize.s14),
      //enabled Border Style
      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color:ColorManager.grey,width: AppSize.s1_5),borderRadius: BorderRadius.circular(AppSize.s5)),
      //focused Border Style
      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color:ColorManager.primary,width: AppSize.s1_5),borderRadius: BorderRadius.circular(AppSize.s5)),
      //error Border Style
      errorBorder: OutlineInputBorder(borderSide: BorderSide(color:ColorManager.error,width: AppSize.s1_5),borderRadius: BorderRadius.circular(AppSize.s5)),
      focusedErrorBorder: OutlineInputBorder(borderSide: BorderSide(color:ColorManager.primary,width: AppSize.s1_5),borderRadius: BorderRadius.circular(AppSize.s5)),
    ),

  );
}