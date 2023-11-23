
import 'package:flutter/material.dart';

Widget defaultButton({
  double width = double.infinity,
  double height = 50.0,
  Color background =Colors.white,
  Color textcolor = Colors.white,
  Color colorFristIcon = Colors.black,
  bool isUpperCase = true,
  double radius = 25.0,
  double radiusTopLeft = 0.0,
  double radiusTopRight = 0.00,
  double radiusBottomRight = 0.0,
  double radiusBottomLeft = 0.0,
  IconData fristIcon=Icons.sort,
  IconData secondIcon=Icons.sort,
  bool shape = true,
  bool isFristIcon = false,
  bool isFristImage = false,
  bool isSecondIcon = false,
  TextStyle? textStyle,
  String? image,
  bool icon = false,
  required VoidCallback? function,
  required String text,
  required BuildContext context,
}) =>
    Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      width: width,
      height: height,
      decoration: BoxDecoration(color:background,

          borderRadius:shape==true?
          BorderRadius.only(topRight:  Radius.circular(radiusTopRight),topLeft:  Radius.circular(radiusTopLeft),bottomLeft: Radius.circular(radiusBottomLeft) ,bottomRight:  Radius.circular(radiusBottomRight)
          ):BorderRadius.circular(radius)),
      child: MaterialButton(
        onPressed: function,
        child:isFristImage==false?Row(mainAxisAlignment: MainAxisAlignment.center,children: [
          if (isFristIcon)  Icon(fristIcon,color: colorFristIcon,),
          if (isFristIcon) const SizedBox(width: 5,),
          Text(
            isUpperCase ? text.toUpperCase() : text,
            style: textStyle,
          ),
          if (isSecondIcon==true) const Spacer()  ,
          if (isSecondIcon)  Icon(secondIcon)  ,

        ],):Row(mainAxisAlignment: MainAxisAlignment.center,children: [
          Padding(
            padding:  const EdgeInsets.all(2),
            child: Image(image:  AssetImage(image!,),height: 15,width: 15,),
          ),
          const SizedBox(width: 5,),
          Text(
            isUpperCase ? text.toUpperCase() : text,
            style: textStyle,
          ),
          if (isSecondIcon==true) const Spacer()  ,
          if (isSecondIcon)  Icon(secondIcon)  ,

        ],),
      ),
    );