import 'package:doctor_app/core/resources/color_manager.dart';
import 'package:doctor_app/core/resources/font_manager.dart';
import 'package:doctor_app/core/resources/values_manager.dart';

import 'package:flutter/material.dart';

Widget defaultFormField({
  TextEditingController? controller,
  TextInputType? type,
  EdgeInsetsGeometry? contentPadding,
  TextStyle? textStyle,
  int? max=1,
  int? min=1,
  TextStyle errorStyle=const TextStyle(fontSize: FontSize.s14,  color:  Color(0xffe61f34)),
  TextStyle? labelStyle,
  bool isEnabled = false,
  bool isFocusBorder = false,
  bool isError = false,
  InputBorder? enabledBorder,
  bool isPassword = false,
  bool readOnly = false,
  Widget? beforeText,
  ValueChanged? change,
  ValueChanged? onSaved,
  VoidCallback? suffixPressed,
  required FormFieldValidator validate,
  String? label,
  double? iconSize,
  InputBorder? errorBorder,
  var prefix,
  bool prefixIsImage = true,
  bool suffixIsImage = false,
  String? hintText,
  OutlineInputBorder? myfocusborder,
  ValueChanged? onSubmit,
  var suffix,
  bool isClickable = true,



}) =>
    TextFormField(readOnly: readOnly,
      maxLines:max ,minLines: min,
      controller: controller,autofocus: true,
      style: textStyle,
      keyboardType: type,
      obscureText: isPassword,obscuringCharacter:'●',
      validator: validate,
      enabled: isClickable,
      onChanged: change,onSaved: onSaved,
      onFieldSubmitted: onSubmit,
      decoration: InputDecoration(icon:beforeText ,
        hintText: hintText,hintStyle: const TextStyle( fontSize: FontSize.s16,
          color: Colors.grey,
          fontWeight: FontWeight.w500,),
        enabledBorder:isEnabled? enabledBorder:isEnabled?OutlineInputBorder(borderRadius: BorderRadius.circular(AppSize.s30),borderSide: BorderSide(color:ColorManager.greyLight,width: AppSize.s1_5)):InputBorder.none,
        labelText: label,
        labelStyle: labelStyle,
        focusedBorder:isFocusBorder? myfocusborder:isFocusBorder? OutlineInputBorder(borderRadius: BorderRadius.circular(AppSize.s30),  borderSide: BorderSide(
            width: 5, color: ColorManager.primary),):InputBorder.none,
        contentPadding: contentPadding,errorStyle: errorStyle,
        errorBorder: isError?errorBorder: isError?OutlineInputBorder(borderRadius: BorderRadius.circular(AppSize.s30),):InputBorder.none,
        prefixIcon: prefix!=null?prefixIsImage==false? Icon(
          prefix,size: 30,
        ):Padding(
          padding:  EdgeInsets.all(iconSize!),
          child: Image(image:  AssetImage(prefix!,),height: 5,width: 5,),
        ):null,
        suffixIcon:suffix!= null
            ? InkWell(
          onTap: suffixPressed,
          child: suffixIsImage==false?Icon(
            suffix,
          ):Padding(
            padding: const EdgeInsets.all(15.0),
            child: Image.asset(  suffix,height: 4,width: 4,),
          ),
        )
            : null,
        border:
        InputBorder.none ,
      ),
    );