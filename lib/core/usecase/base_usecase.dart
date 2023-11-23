


import 'package:dartz/dartz.dart';
import 'package:doctor_app/core/error/faliure.dart';


abstract class BaseUseCase<T,Parameters>{
  Future<Either<Failure,T>> call(Parameters parameters);}
