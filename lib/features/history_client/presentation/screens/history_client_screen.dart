import 'package:doctor_app/core/resources/color_manager.dart';
import 'package:doctor_app/core/resources/font_manager.dart';
import 'package:doctor_app/core/resources/string_manager.dart';
import 'package:doctor_app/core/utils/app_constance.dart';
import 'package:doctor_app/features/history_client/presentation/components/item_doctor_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class HistoryClientScreen extends StatefulWidget {
  late String? nameDocotor;
  HistoryClientScreen({this.nameDocotor,Key? key}) : super(key: key);

  @override
  State<HistoryClientScreen> createState() => _HistoryClientScreenState();
}

class _HistoryClientScreenState extends State<HistoryClientScreen> {
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
            child:   Text(widget.nameDocotor!, style:

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
                Container(
                    height: 25, width: double.infinity,decoration: BoxDecoration(
                  color: ColorManager.green,
                  borderRadius: BorderRadius.only(topLeft:Radius.circular( AppConstance.five0),topRight:Radius.circular( AppConstance.five0) ),
                ),child: Padding(
                  padding: const EdgeInsets.only(top: 2.0,left: 8.0),
                  child: Text('Upcomming Appointment',style: Theme

                      .of(context)

                      .textTheme

                      .headline1!

                      .copyWith(

                    fontWeight: FontWeight.w400,

                    color: ColorManager.black,

                    fontSize: FontSize.s16,

                  ),),
                )),
                SizedBox(height: 200*5,
                  child: ListView.separated(padding: EdgeInsets.zero,physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index){
                      return  itemDoctorDetaildComponent(context,index);
                    },

                    separatorBuilder: (context, index) => const SizedBox(height: 10,),scrollDirection: Axis.vertical,
                    itemCount:5,),
                )

              ],
            ),
          ),

        ),

      ),
    );
  }
}
