
import 'package:doctor_app/components/default_divider.dart';
import 'package:doctor_app/core/resources/color_manager.dart';
import 'package:doctor_app/core/resources/font_manager.dart';
import 'package:doctor_app/core/resources/values_manager.dart';
import 'package:doctor_app/core/utils/app_constance.dart';
import 'package:doctor_app/core/utils/dummy.dart';

import 'package:doctor_app/features/appointment/presentation/components/two_item_in_row.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


Widget buildItemDoctorAppointment(context,List calenderModel0,image,{bool isImage=false}) => Container(
  height: 130,
  width: double.infinity,
  decoration: BoxDecoration(
    color: ColorManager.white,
    borderRadius: BorderRadius.circular(AppConstance.ten),
  ),
  child: Padding(
    padding: const EdgeInsets.only(
      left: 15.0,
    ),
    child: Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  listDoctor[0],
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline1!.copyWith(
                    color: ColorManager.black,
                    fontWeight: FontWeight.w400,
                    fontSize: FontSize.s18,
                  ),
                ),
                SizedBox(
                  height: Get.height / AppResponsiveHeigh.h5,
                ),
                Text(
                  listDoctor0[0],
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline1!.copyWith(
                    color: ColorManager.black,
                    fontWeight: FontWeight.w300,
                    fontSize: FontSize.s18,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: Get.width - 257,
          ),
        isImage==false?  Container(
            width:Get.width / AppResponsiveWidth.w70,
            height:  Get.height / AppResponsiveHeigh.h70,
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage(image)),
              color: ColorManager.primary,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(AppConstance.ten),
                  topLeft: Radius.circular(AppConstance.ten)),
            ),
          ):
          Image.asset( image,  width:Get.width / AppResponsiveWidth.w70,
              height:  Get.height / AppResponsiveHeigh.h70,fit: BoxFit.cover),
        ],
      ),
      myDivider(),
      SizedBox(
        height: 10,
      ),
      Row(
        children: [
           buildTwoItem(context,isImage==false? calenderModel0[0].data:calenderModel0[0].endTime, isImage==false?  Icons.date_range:Icons.access_time_filled_rounded,color: ColorManager.primary),
          SizedBox(
            width: 15,
          ),
          buildTwoItem(context, calenderModel0[0].startTime, Icons.schedule_sharp,color: ColorManager.primary),
          SizedBox(
            width: 15,
          ),
          buildTwoItem(context, calenderModel0[0].hour, Icons.circle_rounded, size: 10.0,color: ColorManager.primary),
        ],
      )
    ]),
  ),
);
