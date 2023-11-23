import 'package:doctor_app/core/resources/color_manager.dart';
import 'package:doctor_app/core/resources/font_manager.dart';
import 'package:doctor_app/core/resources/values_manager.dart';
import 'package:doctor_app/core/utils/app_constance.dart';
import 'package:doctor_app/core/utils/dummy.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget itemDoctorComponent(context,index)=>
    Container(width: Get.width,height:Get.height / AppResponsiveHeigh.h100,

      decoration: BoxDecoration(
        color: ColorManager.white,
        borderRadius: BorderRadius.circular(AppConstance.eighteen),
      ),child: Row(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(width:Get.width / AppResponsiveWidth.w90,height: Get.height / AppResponsiveHeigh.h90,
            decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.cover,image: AssetImage(boarding0[index].image)),
              color: ColorManager.primary,
              borderRadius: BorderRadius.circular(AppConstance.eighteen),
            ),

          ),
        ),
        Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.center,children: [
          Text(
            listDoctor[index],
            textAlign: TextAlign.center,
            style:
            Theme.of(context).textTheme.headline1!.copyWith(
              color: ColorManager.black,
              fontWeight: FontWeight.w400,
              fontSize: FontSize.s18,
            ),
          ),
          SizedBox(height:Get.height / AppResponsiveHeigh.h2),
          Text(
            listDoctor0[index],
            textAlign: TextAlign.center,
            style:
            Theme.of(context).textTheme.headline1!.copyWith(
              color: ColorManager.grey,
              fontWeight: FontWeight.w300,
              fontSize: FontSize.s17,
            ),
          ),
        ],)
      ],),

    );