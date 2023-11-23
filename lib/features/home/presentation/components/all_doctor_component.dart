import 'package:doctor_app/core/resources/color_manager.dart';
import 'package:doctor_app/core/resources/font_manager.dart';
import 'package:doctor_app/core/resources/string_manager.dart';
import 'package:doctor_app/features/history_client/presentation/components/item_doctor_component.dart';
import 'package:doctor_app/features/home/presentation/components/item_doctor_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


class AllDoctorComponent extends StatefulWidget {
  const AllDoctorComponent({Key? key}) : super(key: key);

  @override
  State<AllDoctorComponent> createState() => _AllDoctorComponentState();
}

class _AllDoctorComponentState extends State<AllDoctorComponent> {
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
            padding: const EdgeInsets.only(right: 150.0),
            child:   Text(AppStrings.allDoctor, style:

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
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              children: [

                SizedBox(height: Get.height-200,
                  child: ListView.separated(physics: NeverScrollableScrollPhysics(),padding: EdgeInsets.all(0.0),
                    itemBuilder: (context, index){
                      return itemDoctorComponent(context,index);
                    },

                    separatorBuilder: (context, index) => const SizedBox(height: 5,),scrollDirection: Axis.vertical,
                    itemCount:6,),
                ),

              ],
            ),
          ),

        ),

      ),
    );
  }
}
