import 'package:doctor_app/components/default_text_field.dart';
import 'package:doctor_app/core/resources/color_manager.dart';
import 'package:doctor_app/core/resources/routes_manager.dart';
import 'package:doctor_app/core/resources/string_manager.dart';
import 'package:doctor_app/core/resources/values_manager.dart';
import 'package:doctor_app/core/utils/app_constance.dart';
import 'package:doctor_app/features/regisiter/presentation/controler/register_cubic.dart';
import 'package:doctor_app/features/regisiter/presentation/controler/register_state.dart';


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../../../components/default_button.dart';

class RegisterScreen extends StatelessWidget {

  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordController0 = TextEditingController();
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context) =>RegisterCubic(),
      child: BlocConsumer<RegisterCubic, RegisterState>(listener: (context, state) {

      },builder: (context, state) {
        var cubic = RegisterCubic.get(context);

        return Scaffold(backgroundColor: ColorManager.backGround,
            body: Center(
              child: SingleChildScrollView(physics: NeverScrollableScrollPhysics(),
                child: Padding(
                  padding:  const EdgeInsets.all(10),
                  child: Form(
                    key: formkey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: Get.height-700,
                        ),
                        Text(
                          AppStrings.createNew,
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                          ,
                        ),

                        SizedBox(
                          height: Get.height/AppResponsiveHeigh.h25,
                        ),
                        defaultFormField(prefix: Icons.person,
                          prefixIsImage: false,
                          iconSize: Get.height / AppResponsiveHeigh.h10,
                          textStyle: Theme
                              .of(context)
                              .textTheme
                              .headline6,
                          isEnabled: true,
                          isError: true,
                          isFocusBorder: true,

                          controller:
                          nameController,
                          isPassword: false,
                          type: TextInputType.emailAddress,
                          validate: (value) {
                            if (value!.isEmpty) {

                            }
                          },
                          hintText: AppStrings.labelUser,

                        ),

                        SizedBox(
                          height: Get.height/AppResponsiveHeigh.h15,
                        ),
                        defaultFormField(prefix: Icons.mail,
                          prefixIsImage: false,
                          iconSize: Get.height / AppResponsiveHeigh.h10,
                          textStyle: Theme
                              .of(context)
                              .textTheme
                              .headline6,
                          isEnabled: true,
                          isError: true,
                          isFocusBorder: true,

                          controller:
                          emailController,
                          isPassword: false,
                          type: TextInputType.emailAddress,
                          validate: (value) {
                            if (value!.isEmpty) {

                            }
                          },
                          hintText: AppStrings.labelEmail,

                        ),
                        SizedBox(
                          height: Get.height/AppResponsiveHeigh.h15,
                        ),
                        defaultFormField(prefix: Icons.lock,
                          prefixIsImage: false,
                          iconSize: Get.height / AppResponsiveHeigh.h10,
                          textStyle: Theme
                              .of(context)
                              .textTheme
                              .headline6,
                          isEnabled: true,
                          isError: true,
                          isFocusBorder: true,

                          controller:
                          passwordController,
                          isPassword: true,
                          type: TextInputType.visiblePassword,
                          validate: (value) {
                            if (value!.isEmpty) {

                            }
                          },
                          hintText: AppStrings.labelPassword,

                        ),
                        SizedBox(
                          height: Get.height/AppResponsiveHeigh.h15,
                        ),
                        defaultFormField(prefix: Icons.lock,
                          prefixIsImage: false,
                          iconSize: Get.height / AppResponsiveHeigh.h10,
                          textStyle: Theme
                              .of(context)
                              .textTheme
                              .headline6,
                          isEnabled: true,
                          isError: true,
                          isFocusBorder: true,

                          controller:
                          passwordController0,
                          isPassword: true,
                          type: TextInputType.visiblePassword,
                          validate: (value) {
                            if (value!.isEmpty) {

                            }
                          },
                          hintText: AppStrings.labelPassword,

                        ),
                        SizedBox(
                          height: Get.height/AppResponsiveHeigh.h20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                InkWell(
                                    onTap: () {
                                      cubic.changeBottom(2);
                                    },
                                    child:
                                    Icon(
                                      cubic.selectBox==2
                                          ? Icons.check_box
                                          : Icons
                                          .check_box_outline_blank_outlined,
                                      color: ColorManager.primary,
                                    )),

                                SizedBox(
                                  width: Get.width / AppResponsiveWidth.w8,
                                ),
                                Text(
                                  AppStrings.doctor,
                                  style: Theme
                                      .of(context)
                                      .textTheme
                                      .headline6,
                                ),
                              ],
                            ),
                            SizedBox(
                              width: Get.width -250,
                            ),
                            Row(
                              children: [
                                InkWell(
                                    onTap: () {
                                      cubic.changeBottom(1);
                                    },
                                    child:
                                    Icon(
                                      cubic.selectBox==1
                                          ? Icons.check_box
                                          : Icons
                                          .check_box_outline_blank_outlined,
                                      color: ColorManager.primary,
                                    )),

                                SizedBox(
                                  width: Get.width / AppResponsiveWidth.w8,
                                ),
                                Text(
                                  AppStrings.assistance,
                                  style: Theme
                                      .of(context)
                                      .textTheme
                                      .headline6,
                                ),
                              ],
                            ),
                          ],
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
                              text: AppStrings.signUp,
                              isUpperCase: false),
                        ),
                        SizedBox(height: Get.height/AppResponsiveHeigh.h30,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              AppStrings.alreadyMember,
                              style:  Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(color: Colors.black87),
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.pushReplacementNamed(
                                      context, Routes.loginScreen);
                                },
                                child: Text(
                                  AppStrings.signIn,
                                  style:  Theme.of(context)
                                      .textTheme
                                      .bodyText2!
                                      .copyWith(color: ColorManager.primary,),
                                ))
                          ],
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            ));
      },

      ),
    );


  }

}