import 'package:doctor_app/core/resources/color_manager.dart';
import 'package:doctor_app/features/appointment/presentation/screens/appointment_screen.dart';
import 'package:doctor_app/features/history_date%20_attendance_absence/presentation/screens/history_date%20_attendance_absence_screen.dart';
import 'package:doctor_app/features/home/presentation/controler/home_state.dart';
import 'package:doctor_app/features/home/presentation/screens/home_screen.dart';
import 'package:doctor_app/features/login/presentation/controler/login_state.dart';
import 'package:doctor_app/features/profile/presentation/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubic extends Cubit<HomeState> {
  HomeCubic() : super(HomeInitailState());
  static HomeCubic get(context) => BlocProvider.of(context);
  int currentindex = 0;
  List<BottomNavigationBarItem>bottomItem = [
     BottomNavigationBarItem(icon: Icon(Icons.home_outlined,size: 30,),label: '',backgroundColor: ColorManager.backGround,  ),
    BottomNavigationBarItem(icon: Icon(Icons.date_range,size: 30,),label: '' ,backgroundColor: ColorManager.backGround,),
    BottomNavigationBarItem(icon: Icon(Icons.notifications_none,size: 30,),label: '',backgroundColor: ColorManager.backGround, ),
    BottomNavigationBarItem(icon: Icon(Icons.person,size: 30,),label: '' ,backgroundColor: ColorManager.backGround,),

  ];
  List <Widget> screens=[
    HomeScreen(),
    AppointmentScreen(),
    HistoryDateAttendanceAbsenceScreen(),
    ProfileScreen(),
  ];
  void changeBottomNavBar(int index) {
    emit(HomeInitailState());
    currentindex = index;
    emit(ChangeNavBottomState());
  }
}