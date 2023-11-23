import 'package:doctor_app/components/default_button.dart';
import 'package:doctor_app/components/default_divider.dart';
import 'package:doctor_app/core/resources/color_manager.dart';
import 'package:doctor_app/core/resources/font_manager.dart';
import 'package:doctor_app/core/resources/routes_manager.dart';
import 'package:doctor_app/core/resources/string_manager.dart';
import 'package:doctor_app/core/resources/values_manager.dart';
import 'package:doctor_app/core/utils/app_constance.dart';
import 'package:doctor_app/core/utils/dummy.dart';
import 'package:doctor_app/features/appointment/presentation/components/item_doctor_appointment.dart';
import 'package:doctor_app/features/appointment/presentation/components/two_item_in_row.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppointmentScreen extends StatelessWidget {
  const AppointmentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.backGround,
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 15, right: 15),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: AppStrings.your,
                  style:
                  Theme
                      .of(context)
                      .textTheme
                      .headline1!
                      .copyWith(
                    fontWeight: FontWeight.w500,
                    color: ColorManager.black,
                    fontSize: FontSize.s20,
                  ),

                ),
                TextSpan(
                  text: AppStrings.appointments,
                  style:
                  Theme
                      .of(context)
                      .textTheme
                      .headline1!
                      .copyWith(
                    fontWeight: FontWeight.w500,
                    color: ColorManager.primary,
                    fontSize: FontSize.s20,
                  ),

                ),

              ],
            ),
          ),
          SizedBox(height: 20,),
          Row(children: [
            SizedBox(width: Get.width / AppResponsiveWidth.w2),
            defaultButton(
                height: Get.height / AppResponsiveHeigh.h50,
                textStyle: Theme
                    .of(context)
                    .textTheme
                    .headline2!
                    .copyWith(fontSize: FontSize.s16,
                    color: ColorManager.white,
                    fontWeight: FontWeight.w400),
                shape: true,
                width: Get.width / AppResponsiveWidth.w115,
                background: ColorManager.primary,
                radiusTopLeft: AppConstance.ten,
                radiusBottomLeft: AppConstance.ten,
                context: context,
                isFristImage: false,

                function: () {

                },
                text: AppStrings.upComing,
                isUpperCase: false),
            defaultButton(
                height: Get.height / AppResponsiveHeigh.h50,
                textStyle: Theme
                    .of(context)
                    .textTheme
                    .headline2!
                    .copyWith(fontSize: FontSize.s16,
                    color: ColorManager.white,
                    fontWeight: FontWeight.w400),
                shape: true,
                width: Get.width / AppResponsiveWidth.w115,
                background: ColorManager.primary,

                context: context,
                isFristImage: false,

                function: () {

                },
                text: AppStrings.completed,
                isUpperCase: false),
            defaultButton(
                height: Get.height / AppResponsiveHeigh.h50,
                textStyle: Theme
                    .of(context)
                    .textTheme
                    .headline2!
                    .copyWith(fontSize: FontSize.s16,
                    color: ColorManager.white,
                    fontWeight: FontWeight.w400),
                shape: true,
                width: Get.width / AppResponsiveWidth.w110,
                background: ColorManager.primary,
                radiusTopRight: AppConstance.ten,
                radiusBottomRight: AppConstance.ten,
                context: context,
                isFristImage: false,

                function: () {

                },
                text: AppStrings.cancelled,
                isUpperCase: false),
          ],),
          SizedBox(height: 20,),
          Text(
            AppStrings.today,
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
          SizedBox(height: 20,),
          SizedBox(height: Get.height-255,
            child: ListView.separated(padding: EdgeInsets.zero,
              itemBuilder: (context, index){
                return  GestureDetector(child: buildItemDoctorAppointment(context, calenderModel0,boarding0[0].image,),onTap: () {
                  Navigator.pushNamed(
                      context, Routes.historyClient,arguments:"Name Docotor");
                },);
              },

              separatorBuilder: (context, index) => const SizedBox(height: 10,),scrollDirection: Axis.vertical,
              itemCount:5,),
          )

        ]),
      ),);
  }
}
