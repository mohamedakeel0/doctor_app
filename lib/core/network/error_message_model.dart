import 'package:equatable/equatable.dart';

class ErrorMessageModel extends Equatable{
  final bool statusCode;
  final String statusMessage;
final List<String>? errors;


  const ErrorMessageModel(
      {required this.statusCode,
        required this.statusMessage,
        required this.errors,


      });
  factory ErrorMessageModel.fromJson(Map<String, dynamic> json)=>
      ErrorMessageModel(statusCode: json['status'],statusMessage: json['message'],errors: List<String>.from(json['errors'].map((e) => e)) ,
     );
  @override
  List<Object?> get props =>
      [statusCode, statusMessage,errors ];
}