import 'package:doctor_app/components/default_button.dart';
import 'package:doctor_app/components/default_text_field.dart';
import 'package:doctor_app/core/resources/values_manager.dart';
import 'package:doctor_app/core/utils/dummy.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:doctor_app/core/resources/color_manager.dart';
import 'package:doctor_app/core/resources/font_manager.dart';
import 'package:doctor_app/core/resources/string_manager.dart';
import 'package:doctor_app/core/utils/app_constance.dart';
import 'package:get/get.dart';
class MakeAppointmentScreen extends StatefulWidget {
  const MakeAppointmentScreen({Key? key}) : super(key: key);

  @override
  State<MakeAppointmentScreen> createState() => _MakeAppointmentScreenState();
}

class _MakeAppointmentScreenState extends State<MakeAppointmentScreen> {

  GlobalKey<FormState> formkey = GlobalKey<FormState>();
var gender='male';
  TextEditingController phoneController = TextEditingController();
  TextEditingController problemController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordController0 = TextEditingController();
  TextEditingController fullNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(

      value: SystemUiOverlayStyle(
          statusBarColor: ColorManager.primary,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.dark),
      child: Scaffold(
        backgroundColor: ColorManager.backGround,
        appBar: AppBar(
          backgroundColor: ColorManager.primary,
          title: Padding(
            padding: const EdgeInsets.only(right: 100.0),
            child:   Text(AppStrings.makeAppointments, style:

            Theme

                .of(context)

                .textTheme

                .headline1!

                .copyWith(

              fontWeight: FontWeight.w500,

              color: ColorManager.white,

              fontSize: FontSize.s20,

            ),),
          ),
        ),
body:SingleChildScrollView(physics: NeverScrollableScrollPhysics(),
  child: Padding(
    padding:  const EdgeInsets.all(10),
    child: Form(
      key: formkey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text(
            AppStrings.fullName,
            style: Theme.of(context)
                .textTheme
                .headline6!.copyWith(  fontWeight: FontWeight.w500,
              color: ColorManager.black,
              fontSize: FontSize.s18,)
            ,
          ),

          SizedBox(
            height: Get.height/AppResponsiveHeigh.h15,
          ),
          Container(color: ColorManager.white,
            child: defaultFormField(
              prefixIsImage: true,
              iconSize: Get.height / AppResponsiveHeigh.h10,
              textStyle: Theme
                  .of(context)
                  .textTheme
                  .headline6,
              isEnabled: true,
              isError: true,
              isFocusBorder: true,

              controller:
              fullNameController,
              isPassword: false,
              type: TextInputType.emailAddress,
              validate: (value) {
                if (value!.isEmpty) {

                }
              },
              hintText: AppStrings.labelUser,

            ),
          ),
          SizedBox(
            height: Get.height/AppResponsiveHeigh.h5,
          ),
          Text(
            AppStrings.phone,
            style: Theme.of(context)
                .textTheme
                .headline6!.copyWith(  fontWeight: FontWeight.w500,
              color: ColorManager.black,
              fontSize: FontSize.s18,)
            ,
          ),

          SizedBox(
            height: Get.height/AppResponsiveHeigh.h15,
          ),
          Container(color: ColorManager.white,
            child: defaultFormField( prefixIsImage: true,
              iconSize: Get.height / AppResponsiveHeigh.h10,
              textStyle: Theme
                  .of(context)
                  .textTheme
                  .headline6,
              isEnabled: true,
              isError: true,
              isFocusBorder: true,

              controller:
              phoneController,
              isPassword: false,
              type: TextInputType.number,
              validate: (value) {
                if (value!.isEmpty) {

                }
              },
              hintText: AppStrings.labelPhone,

            ),
          ),
          SizedBox(
            height: Get.height/AppResponsiveHeigh.h5,
          ),
          Text(
            AppStrings.age,
            style: Theme.of(context)
                .textTheme
                .headline6!.copyWith(  fontWeight: FontWeight.w500,
              color: ColorManager.black,
              fontSize: FontSize.s18,)
            ,
          ),
          SizedBox(
            height: Get.height/AppResponsiveHeigh.h15,
          ),
          Container(color: ColorManager.white,
            child: defaultFormField( prefixIsImage: true,
              iconSize: Get.height / AppResponsiveHeigh.h10,
              textStyle: Theme
                  .of(context)
                  .textTheme
                  .headline6,
              isEnabled: true,
              isError: true,
              isFocusBorder: true,

              controller:
              ageController,
              isPassword: false,
              type: TextInputType.number,
              validate: (value) {
                if (value!.isEmpty) {

                }
              },
              hintText: AppStrings.labelAge,

            ),
          ),

          SizedBox(
            height: Get.height/AppResponsiveHeigh.h5,
          ),
          Text(
            AppStrings.labelGender,
            style: Theme.of(context)
                .textTheme
                .headline6!.copyWith(  fontWeight: FontWeight.w500,
              color: ColorManager.black,
              fontSize: FontSize.s18,)
            ,
          ),

          SizedBox(
            height: Get.height/AppResponsiveHeigh.h15,
          ),
          Container(
            decoration: BoxDecoration(
              color: ColorManager.white,
              border: Border.all(color: ColorManager.grey,),
            ),
            width: Get.width / AppResponsiveWidth.w250,
            height: Get.height / AppResponsiveHeigh.h40,
            child: Padding(
              padding: EdgeInsets.only(
                  left:
                  Get.width / AppResponsiveWidth.w8),
              child: Theme(
                  data: ThemeData(
                      textTheme: const TextTheme(
                          subtitle1: TextStyle(
                              fontSize: FontSize.s22))),
                  child: DropdownButton(
                    borderRadius: BorderRadius.circular(
                        Get.height /
                            AppResponsiveHeigh.h25),
                    hint: Center(
                      child:
                      Text(
                          gender,style: Theme.of(context).textTheme.headline1!),
                    ),
                    value: gender,
                    icon: Padding(
                      padding: EdgeInsets.only(
                          left: Get.width /
                              AppResponsiveWidth.w150),
                      child: Icon(
                        Icons.arrow_drop_down_outlined,
                        size: 30,
                      ),
                    ),
                    elevation: 16,
                    style: Theme.of(context)
                        .textTheme
                        .headline6,
                    underline: SizedBox(),
                    onChanged: (value) {
                      setState(() {
                        gender=value.toString();
                      });

                    },
                    items: list
                        .map<DropdownMenuItem<String>>(
                            (String? value) {
                          return DropdownMenuItem<String>(
                            value: value!,
                            child: Text(value),
                          );
                        }).toList(),
                  )),
            ),
          ),
          SizedBox(
            height: Get.height/AppResponsiveHeigh.h5,
          ),
          Text(
            AppStrings.yourProblem,
            style: Theme.of(context)
                .textTheme
                .headline6!.copyWith(  fontWeight: FontWeight.w500,
              color: ColorManager.black,
              fontSize: FontSize.s18,)
            ,
          ),
          SizedBox(
            height: Get.height/AppResponsiveHeigh.h15,
          ),
          Container(height: Get.height/AppResponsiveHeigh.h250,decoration: BoxDecoration(
            color: ColorManager.white,borderRadius: BorderRadius.circular(
              Get.height /
                  AppResponsiveHeigh.h5),
            border: Border.all(color: ColorManager.grey,),
          ),
            child: defaultFormField( prefixIsImage: true,
              iconSize: Get.height / AppResponsiveHeigh.h10,
              textStyle: Theme
                  .of(context)
                  .textTheme
                  .headline6,min: 2,max: 8,
              isEnabled: false,
              isError: false,
              isFocusBorder: false,

              controller:
              problemController,
              isPassword: false,
              type: TextInputType.multiline,
              validate: (value) {
                if (value!.isEmpty) {

                }
              },
              hintText: AppStrings.labelProblem,

            ),
          ),
          SizedBox(
            height: Get.height/AppResponsiveHeigh.h20,
          ),
          Center(
            child: defaultButton(height: Get.height/AppResponsiveHeigh.h50,radius: AppConstance.ten,
                textStyle:
                Theme
                    .of(context)
                    .textTheme
                    .headline2!.copyWith(color: ColorManager.white,),
                shape: false,
                width: Get.width / 1.3,
                background: ColorManager.primary,
                context: context,
                function: () {

                },
                text: AppStrings.addAppointments,
                isUpperCase: false),
          ),


        ],
      ),
    ),
  ),
) ,

      ),
    );
  }
}

