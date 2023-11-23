import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:doctor_app/core/resources/color_manager.dart';
import 'package:doctor_app/core/resources/font_manager.dart';
import 'package:doctor_app/core/resources/string_manager.dart';
import 'package:doctor_app/core/utils/dummy.dart';
import 'package:doctor_app/features/appointment/presentation/components/item_doctor_appointment.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class HistoryDateAttendanceAbsenceScreen extends StatefulWidget {
  const HistoryDateAttendanceAbsenceScreen({Key? key}) : super(key: key);

  @override
  State<HistoryDateAttendanceAbsenceScreen> createState() => _HistoryDateAttendanceAbsenceScreenState();
}

class _HistoryDateAttendanceAbsenceScreenState extends State<HistoryDateAttendanceAbsenceScreen> {
  @override
  Widget build(BuildContext context) {
    DatePickerController _controller = DatePickerController();

    DateTime _selectedValue = DateTime.now();
    return AnnotatedRegion<SystemUiOverlayStyle>(

      value: SystemUiOverlayStyle(
          statusBarColor: ColorManager.primary,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.dark),
      child: Scaffold(
        backgroundColor: ColorManager.backGround,
       appBar: AppBar(
         backgroundColor:  ColorManager.primary,
         title: Text( AppStrings.historyAttendanceAbsence, style:

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
       body: Column(
         children: [
           Container(height: 100,
               padding: const EdgeInsets.only(top: 11, bottom: 11),
               decoration: BoxDecoration(color: const Color(0xFFF5F5F5)),
               child: DatePicker(
                 DateTime.now(),
                 width: 60,
                 height: 80,
                 controller: _controller,
                 initialSelectedDate: DateTime.now(),
                 selectionColor: Colors.black,
                 selectedTextColor: Colors.white,
                 inactiveDates: [
                   DateTime.now().add(Duration(days: 6)),

                 ],
                 onDateChange: (date) {
                   // New date selected
                   setState(() {
                     _selectedValue = date;
                   });
                 },
               )),
           SizedBox(height: Get.height-255,
             child: ListView.separated(padding: EdgeInsets.zero,
               itemBuilder: (context, index){
                 return  buildItemDoctorAppointment(context, calenderModel0,calenderModel0[0].image,isImage: true);
               },

               separatorBuilder: (context, index) => const SizedBox(height: 10,),scrollDirection: Axis.vertical,
               itemCount:5,),
           )
         ],
       ),


      ),
    );

  }
}
