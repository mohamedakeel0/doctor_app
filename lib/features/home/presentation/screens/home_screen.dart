import 'package:doctor_app/core/resources/color_manager.dart';
import 'package:doctor_app/core/resources/font_manager.dart';
import 'package:doctor_app/core/resources/routes_manager.dart';
import 'package:doctor_app/core/resources/string_manager.dart';
import 'package:doctor_app/core/resources/values_manager.dart';
import 'package:doctor_app/core/utils/app_constance.dart';
import 'package:doctor_app/core/utils/dummy.dart';
import 'package:doctor_app/features/home/presentation/components/item_doctor_component.dart';
import 'package:doctor_app/features/home/presentation/components/slider_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.backGround,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
            statusBarColor: ColorManager.primary,
            statusBarIconBrightness: Brightness.dark,
            statusBarBrightness: Brightness.dark),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.only(
              top: Get.height / AppResponsiveHeigh.h50,
              right: Get.width / AppResponsiveWidth.w15,
               left: Get.width / AppResponsiveWidth.w15,
              bottom: Get.height / AppResponsiveHeigh.h20,
            ),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: Get.width / AppResponsiveWidth.w70,
                      height: Get.height / AppResponsiveHeigh.h70,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            'https://img.freepik.com/free-photo/attractive-young-male-nutriologist-lab-coat-smiling-against-white-background_662251-2960.jpg',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: Get.width / AppResponsiveWidth.w8,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppStrings.goodMor,
                          textAlign: TextAlign.center,
                          style:
                              Theme.of(context).textTheme.headline1!.copyWith(
                                    fontWeight: FontWeight.w300,
                                    color: ColorManager.black,
                                    fontSize: FontSize.s18,
                                  ),
                        ),
                        SizedBox(
                          height: Get.height / AppResponsiveHeigh.h5,
                        ),
                        Text(
                          AppStrings.name,
                          textAlign: TextAlign.center,
                          style:
                              Theme.of(context).textTheme.headline1!.copyWith(
                                    color: ColorManager.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: FontSize.s18,
                                  ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: Get.height / AppResponsiveHeigh.h20,
                ),
                Container(
                  height: Get.height / AppResponsiveHeigh.h40,
                  width: Get.width,
                  decoration: BoxDecoration(
                    color: ColorManager.white,
                    borderRadius: BorderRadius.circular(AppConstance.ten),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(AppConstance.ten),
                    child: Row(children: [
                      Text(
                        AppStrings.search,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headline1!.copyWith(
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                              fontSize: FontSize.s18,
                            ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                    ]),
                  ),
                ),
                SizedBox(
                  height: Get.height / AppResponsiveHeigh.h30,
                ),
                SizedBox(height: 200.0,child: CarouselDemo()),

                Row(
                  children: [
                    Text(
                      AppStrings.allDoctor,
                      textAlign: TextAlign.center,
                      style:
                      Theme.of(context).textTheme.headline1!.copyWith(
                        color: ColorManager.head,
                        fontWeight: FontWeight.w400,
                        fontSize: FontSize.s26,
                      ),
                    ),
                    Spacer(),
                    GestureDetector(onTap: () {
                      Navigator.pushNamed(
                          context, Routes.allDoctor,);
                    },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Text(
                          AppStrings.seeAll,
                          textAlign: TextAlign.center,
                          style:
                          Theme.of(context).textTheme.headline1!.copyWith(
                            color: Colors.grey,
                            fontWeight: FontWeight.w400,
                            fontSize: FontSize.s18,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: Get.height / AppResponsiveHeigh.h5,
                ),

            SizedBox(height: Get.height-200,
              child: ListView.separated(physics: NeverScrollableScrollPhysics(),padding: EdgeInsets.all(0.0),
                itemBuilder: (context, index){
                  return itemDoctorComponent(context,index);
                },

                separatorBuilder: (context, index) => const SizedBox(height: 5,),scrollDirection: Axis.vertical,
                itemCount:boarding0.length,),
            ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
