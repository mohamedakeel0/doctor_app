import 'package:doctor_app/core/resources/assets_manager.dart';
import 'package:doctor_app/core/resources/color_manager.dart';
import 'package:doctor_app/core/resources/font_manager.dart';
import 'package:doctor_app/core/resources/routes_manager.dart';
import 'package:doctor_app/core/resources/string_manager.dart';
import 'package:doctor_app/core/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
          statusBarColor: ColorManager.primary,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.dark),
      child: Scaffold(body: Stack(
        children: [
          Column(children: [
            Container(
              height: 250,width: double.infinity,decoration: BoxDecoration(color: ColorManager.primary,borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))),),
            Container(height: Get.height-310,width: double.infinity,color: ColorManager.bottomProfile,
            child: Padding(
              padding: const EdgeInsets.only(top: 80.0),
              child: Column(children: [

                Text(
                  AppStrings.name,
                  textAlign: TextAlign.center,
                  style:
                  Theme
                      .of(context)
                      .textTheme
                      .headline1!
                      .copyWith(
                    fontWeight: FontWeight.w500,
                    color: ColorManager.black,
                    fontSize: FontSize.s18,
                  ),
                ),
                SizedBox(height: 5,),
                Text(
                  'ID : 1012546',
                  textAlign: TextAlign.center,
                  style:
                  Theme
                      .of(context)
                      .textTheme
                      .headline1!
                      .copyWith(
                    fontWeight: FontWeight.w300,
                    color: ColorManager.black,
                    fontSize: FontSize.s14,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0,right: 20.0,top: 20.0),
                  child: Container(height: 50,width: double.infinity,decoration: BoxDecoration(color: ColorManager.white,borderRadius: BorderRadius.circular(10)),
                    child: ListTile(trailing: Icon(Icons.arrow_forward_ios_outlined,color: ColorManager.grey,),title:Padding(
                      padding: const EdgeInsets.only(right: 150.0),
                      child: Text(
                        AppStrings.labelPassword,
                        textAlign: TextAlign.center,
                        style:
                        Theme
                            .of(context)
                            .textTheme
                            .headline1!
                            .copyWith(
                          fontWeight: FontWeight.w400,
                          color: ColorManager.black,
                          fontSize: FontSize.s15,
                        ),
                      ),
                    ) ,leading: Icon(Icons.lock_outlined,color: ColorManager.primary,),),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0,right: 20.0,top: 20.0),
                  child: Container(height: 50,width: double.infinity,decoration: BoxDecoration(color: ColorManager.white,borderRadius: BorderRadius.circular(10)),
                    child: ListTile(trailing: Icon(Icons.arrow_forward_ios_outlined,color: ColorManager.grey,),title:Padding(
                      padding: const EdgeInsets.only(right: 120.0),
                      child: Text(
                        AppStrings.email,
                        textAlign: TextAlign.center,
                        style:
                        Theme
                            .of(context)
                            .textTheme
                            .headline1!
                            .copyWith(
                          fontWeight: FontWeight.w400,
                          color: ColorManager.black,
                          fontSize: FontSize.s15,
                        ),
                      ),
                    ) ,leading: Icon(Icons.mail_outline_outlined,color: ColorManager.primary,),),),
                ),
                GestureDetector(onTap: () {
                  Navigator.pushNamed(
                      context, Routes.makeAppointmentScreen,);
                },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0,right: 20.0,top: 20.0),
                    child: Container(height: 50,width: double.infinity,decoration: BoxDecoration(color: ColorManager.white,borderRadius: BorderRadius.circular(10)),
                      child: ListTile(trailing: Icon(Icons.arrow_forward_ios_outlined,color: ColorManager.grey,),title:Padding(
                        padding: const EdgeInsets.only(right: 120.0),
                        child: Text(
                          AppStrings.appointments,
                          textAlign: TextAlign.center,
                          style:
                          Theme
                              .of(context)
                              .textTheme
                              .headline1!
                              .copyWith(
                            fontWeight: FontWeight.w400,
                            color: ColorManager.black,
                            fontSize: FontSize.s15,
                          ),
                        ),
                      ) ,leading: Icon(Icons.date_range,color: ColorManager.primary,),),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0,right: 20.0,top: 20.0),
                  child: Container(height: 50,width: double.infinity,decoration: BoxDecoration(color: ColorManager.white,borderRadius: BorderRadius.circular(10)),
                    child: ListTile(title:Padding(
                      padding: const EdgeInsets.only(right: 190.0),
                      child: Text(
                        AppStrings.support,
                        textAlign: TextAlign.center,
                        style:
                        Theme
                            .of(context)
                            .textTheme
                            .headline1!
                            .copyWith(
                          fontWeight: FontWeight.w400,
                          color: ColorManager.black,
                          fontSize: FontSize.s15,
                        ),
                      ),
                    ) ,leading: Icon(Icons.call,color: ColorManager.primary,),),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0,right: 20.0,top: 20.0),
                  child: Container(height: 50,width: double.infinity,decoration: BoxDecoration(color: ColorManager.white,borderRadius: BorderRadius.circular(10)),
                    child: ListTile(title:Padding(
                      padding: const EdgeInsets.only(right: 190.0),
                      child: Text(
                        AppStrings.signOut,
                        textAlign: TextAlign.center,
                        style:
                        Theme
                            .of(context)
                            .textTheme
                            .headline1!
                            .copyWith(
                          fontWeight: FontWeight.w400,
                          color: ColorManager.black,
                          fontSize: FontSize.s15,
                        ),
                      ),
                    ) ,leading: Icon(Icons.logout,color: ColorManager.primary,),),),
                ),
              ],),
            ),
            ),


          ],),
          Positioned(top: 180,right: 130,left: 110,
            child: Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [

                CircleAvatar(
                  radius: Get.height /
                      AppResponsiveHeigh.h70,
                  backgroundImage: AssetImage(
                      ImageAssets.doctor4),
                ),
                InkWell(
                  onTap: () {

                  },
                  child: Icon(Icons.add_circle_outlined,color: ColorManager.edit,size: 35,),

                ),

              ],
            ),
          ),
        ],
      ),),
    );
  }
}
