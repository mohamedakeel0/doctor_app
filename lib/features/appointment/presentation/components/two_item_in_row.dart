import 'package:doctor_app/core/resources/color_manager.dart';
import 'package:doctor_app/core/resources/font_manager.dart';
import 'package:flutter/material.dart';


Widget buildTwoItem(context,text,icon,{size,Color? color,TextStyle? textStyle,bool isImage=false})=>Row(children: [
   Icon(icon,color: color,size: size,),
  SizedBox(width: 5,),
  Text(
    text,
    textAlign: TextAlign.center,
    style:
    textStyle??Theme
        .of(context)
        .textTheme
        .headline1!
        .copyWith(
      fontWeight: FontWeight.w400,
      color: ColorManager.black,
      fontSize: FontSize.s15,
    ),
  ),
],);