


import 'package:doctor_app/core/resources/string_manager.dart';
import 'package:doctor_app/features/history_client/presentation/screens/history_client_screen.dart';
import 'package:doctor_app/features/home/presentation/components/all_doctor_component.dart';
import 'package:doctor_app/features/home/presentation/screens/main_screen.dart';
import 'package:doctor_app/features/login/presentation/screens/login_screen.dart';
import 'package:doctor_app/features/make_appointment/presentation/screens/make_appointment_screen.dart';
import 'package:doctor_app/features/regisiter/presentation/screens/regisiter_screen.dart';
import 'package:doctor_app/features/splash/screens/splash_screen.dart';
import 'package:flutter/material.dart';
class Routes{
  static const String splashRoute ='/';
  static const String loginScreen ='/login';
  static const String registerScreen ='/register';
  static const String mainScreen ='/main';
  static const String historyClient ='/HistoryClient';
  static const String makeAppointmentScreen ='/makeAppointment';
  static const String allDoctor ='/allDoctor';


}
class RouteGenerator{
  static Route<dynamic>  getRoute(RouteSettings settings){
    switch(settings.name){
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_)=>const SplashScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_)=> LoginScreen());
      case Routes.registerScreen:
        return MaterialPageRoute(builder: (_)=> RegisterScreen());
      case Routes.mainScreen:
        return MaterialPageRoute(builder: (_)=> MainScreen());
      case Routes.historyClient:
        return MaterialPageRoute(builder: (_)=> HistoryClientScreen(nameDocotor: settings.arguments.toString()));
      case Routes.makeAppointmentScreen:
        return MaterialPageRoute(builder: (_)=> MakeAppointmentScreen());
      case Routes.allDoctor:
        return MaterialPageRoute(builder: (_)=> AllDoctorComponent());
      default:
        return unDefinedRoute();
    }
  }
  static Route<dynamic>unDefinedRoute(){
    return MaterialPageRoute(builder: (_)=>Scaffold(
      appBar: AppBar(title:const Text(AppStrings.noRoutefound),),body:const Center(child: Text(AppStrings.noRoutefound),),
    ));
  }
}