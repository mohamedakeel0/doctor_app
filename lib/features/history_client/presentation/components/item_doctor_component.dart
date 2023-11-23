import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:doctor_app/components/default_divider.dart';
import 'package:doctor_app/core/resources/color_manager.dart';
import 'package:doctor_app/core/resources/font_manager.dart';
import 'package:doctor_app/core/utils/app_constance.dart';
import 'package:doctor_app/features/appointment/presentation/components/two_item_in_row.dart';
import 'package:doctor_app/features/history_client/presentation/components/three_item_colum.dart';

Widget itemDoctorDetaildComponent(context, int index)=>Container(
  height: 200, width: double.infinity,decoration: BoxDecoration(
  color: ColorManager.white,
  borderRadius: BorderRadius.only(bottomRight:Radius.circular( AppConstance.five0),bottomLeft:Radius.circular( AppConstance.five0) ),
),child: Padding(
  padding: const EdgeInsets.all(8.0),
  child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
    buildTwoItem(context, 'Tue,30 Step at 4:00 PM', Icons.schedule_sharp,color: ColorManager.greyDark,),
    SizedBox(height: 5,),
    myDivider(),
    SizedBox(height: 5,),
    Row(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.center,children: [
      Column(crossAxisAlignment: CrossAxisAlignment.start,children: [


        buildTwoItem(context,   'Mohamed ahmed', Icons.person,color: ColorManager.greyDark,),
        Padding(
          padding:  EdgeInsets.only(left:Get.width-365),
          child: Text(
            'back pain',
            textAlign: TextAlign.start,
            style: Theme.of(context).textTheme.headline1!.copyWith(
              color: ColorManager.greyDark,
              fontWeight: FontWeight.w300,
              fontSize: FontSize.s17,
            ),
          ),
        ),
      ],),
      Spacer(),
      Padding(
        padding:  EdgeInsets.only(right: Get.width-390),
        child: Container(height: 40,width: 80,decoration: BoxDecoration(
            border: Border.all(color: ColorManager.primary,width: 1.0),
            shape: BoxShape.circle
        ),child: Icon(Icons.call,color: ColorManager.primary,)),
      ),
    ],),
    SizedBox(height: 5,),
    myDivider(),

    SizedBox(height: 10.0,),
    Row(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,children: [
      threeItemColum(context,ColorManager.blue,'Location', 'المنصورة، مدينة طلخا، مركز طلخا',Icons.location_on_outlined),
      SizedBox(width: 10,),
      threeItemColum(context,ColorManager.red,'Time', '${DateTime.now().hour} : ${DateTime.now().minute}',Icons.schedule_rounded),

      Padding(
        padding:  EdgeInsets.only(right: Get.width-390),
        child: Container(height: 40,width: 70,decoration: BoxDecoration(
            border: Border.all(color: ColorManager.darkGrey,width: 1.0),
            shape: BoxShape.circle
        ),child: Icon(Icons.image,color: ColorManager.darkGrey,)),
      ),
    ],),

  ]),
),);