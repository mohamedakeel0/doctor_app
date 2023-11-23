import 'package:flutter/material.dart';
import 'package:doctor_app/core/resources/color_manager.dart';
import 'package:doctor_app/core/resources/font_manager.dart';
import 'package:doctor_app/features/appointment/presentation/components/two_item_in_row.dart';

Widget threeItemColum(context,colorIcon,titleText,text,icon)=>Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
  buildTwoItem(context, titleText, icon,color: colorIcon,textStyle: Theme
      .of(context)
      .textTheme
      .headline1!
      .copyWith(
    fontWeight: FontWeight.w500,
    color: ColorManager.greyDark,
    fontSize: FontSize.s17,
  )),
  SizedBox(height: 2.0,),
  Padding(
    padding: const EdgeInsets.only(left: 25.0),
    child: SizedBox(width: 110,
      child: Text(
        text,
        textAlign: TextAlign.start,
        style: Theme.of(context).textTheme.headline1!.copyWith(
          color: ColorManager.black,
          fontWeight: FontWeight.w300,
          fontSize: FontSize.s17,
        ),
      ),
    ),
  ),
],);