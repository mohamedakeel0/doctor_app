import 'dart:async';

import 'package:doctor_app/components/default_button.dart';
import 'package:doctor_app/core/resources/assets_manager.dart';
import 'package:doctor_app/core/resources/color_manager.dart';
import 'package:doctor_app/core/resources/constants_manager.dart';
import 'package:doctor_app/core/resources/routes_manager.dart';
import 'package:doctor_app/core/resources/string_manager.dart';
import 'package:doctor_app/core/resources/values_manager.dart';
import 'package:doctor_app/core/utils/app_constance.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
class SplashScreen extends StatefulWidget {
  const  SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
bool selectColor=false;

  @override
  Widget build(BuildContext context) {

print(Get.width);

    return Scaffold(

        backgroundColor: ColorManager.primary,
        body:  AnnotatedRegion<SystemUiOverlayStyle>(value: SystemUiOverlayStyle(   statusBarColor:ColorManager.primary,statusBarIconBrightness: Brightness.dark,statusBarBrightness: Brightness.dark),
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(AppStrings.dr,style:Theme
                  .of(context)
                  .textTheme
                  .subtitle1 ,),
              SizedBox(height: Get.height/AppResponsiveHeigh.h15,),
              Center(
                child: Container(
                  width: Get.width/AppResponsiveWidth.w250,
                  height: Get.height/AppResponsiveHeigh.h250,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(fit: BoxFit.cover,
                      image: NetworkImage('https://img.freepik.com/free-photo/attractive-young-male-nutriologist-lab-coat-smiling-against-white-background_662251-2960.jpg',),

                    ),
                  ),
                ),),
SizedBox(height: Get.height/AppResponsiveHeigh.h35,),
              defaultButton(height: Get.height/AppResponsiveHeigh.h50,radius: AppConstance.ten,
                  textStyle:
                  Theme
                      .of(context)
                      .textTheme
                      .headline2!.copyWith(color:selectColor==true? ColorManager.white:ColorManager. primary,),
                  shape: false,
                  width: Get.width / 1.3,
                  background:selectColor==true? ColorManager.primary:ColorManager. white,
                  context: context,
                  function: () {
setState(() {
  selectColor=false;
});
Navigator.pushReplacementNamed(
    context, Routes.loginScreen);
                  },
                  text: AppStrings.signIn,
                  isUpperCase: false),
              SizedBox(height: Get.height/AppResponsiveHeigh.h20,),
              defaultButton(height: Get.height/AppResponsiveHeigh.h50,
                  textStyle:
                  Theme
                      .of(context)
                      .textTheme
                      .headline2!.copyWith(color:selectColor==false? ColorManager.white:ColorManager. primary,),
                  shape: false,
                  width: Get.width / 1.3,radius: AppConstance.ten,
                  background:selectColor==false? ColorManager.primary:ColorManager. white,
                  context: context,
                  function: () {
                    setState(() {
                      selectColor=true;
                    });
                    Navigator.pushReplacementNamed(
                        context, Routes.registerScreen);
                  },
                  text: AppStrings.signUp,
                  isUpperCase: false)
            ],
          ),
        ));
  }


}
