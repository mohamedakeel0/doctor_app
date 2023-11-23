import 'package:doctor_app/core/resources/assets_manager.dart';
import 'package:doctor_app/core/resources/string_manager.dart';

class BoardingModel {
  final String image;
  final String title;


  BoardingModel({required this.image, required this.title, });
}
class CalenderModel{
  final String startTime;
  final String endTime;
  final String data;
  final String hour;
  final String image;
  CalenderModel({
    required this.startTime,
    required this.endTime,
    required this.data,
    required this.hour,
    required this.image,
  });
}
List<BoardingModel> boarding = [
  BoardingModel(
      image: 'https://img.freepik.com/free-photo/attractive-young-male-nutriologist-lab-coat-smilingagainst-white-background_662251-2960.jpg',
      title: AppStrings.title,
      ),
  BoardingModel(
    image: 'https://media.istockphoto.com/id/138205019/photo/happy-healthcare-practitioner.jpg?s=612x612&w=0&k=20&c=b8kUyVtmZeW8MeLHcDsJfqqF0XiFBjq6tgBQZC7G0f0=',
    title: AppStrings.title1,),
  BoardingModel(
    image: 'https://img.freepik.com/free-photo/doctor-with-his-arms-crossed-white-background_1368-5790.jpg?w=2000',
    title: AppStrings.title2,),
  BoardingModel(
    image: 'https://img.freepik.com/free-photo/doctor-with-his-arms-crossed-white-background_1368-5790.jpg?w=2000',
    title: AppStrings.title2,)
];
List listDoctor=['Dr. Ahmed','Dr. mahmoud','Dr. Doaa','Dr. Sara','Dr. Khaled','Dr . Yousef' , 'Dr . Rana'];
List listDoctor0=['Cardaic specialist','Neuro specialist','Cardaic specialist','Neuro specialist','Neuro specialist','Cardaic specialist','Neuro specialist',];

List<BoardingModel> boarding0 = [
  BoardingModel(image: ImageAssets.doctor,
    title: AppStrings.title,
  ),
  BoardingModel(
    image: ImageAssets.doctor1,    title: AppStrings.title1,),
  BoardingModel(image: ImageAssets.doctor3,    title: AppStrings.title2,),
  BoardingModel(image: ImageAssets.doctor,    title: AppStrings.title,),
  BoardingModel(image: ImageAssets.doctor1,    title: AppStrings.title1,),
  BoardingModel(image: ImageAssets.doctor3,    title: AppStrings.title2,),
  BoardingModel(
    image: ImageAssets.doctor1,    title: AppStrings.title1,),

];
List<CalenderModel> calenderModel0 = [

  CalenderModel(
    startTime: '10:30 AM',    endTime: '8:00 PM',data: '15 Dec , 2022',hour: '1 hour',image:ImageAssets.calender,  ),
];
List <String>list=['male','famale'];