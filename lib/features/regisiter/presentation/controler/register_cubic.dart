



import 'package:doctor_app/features/login/presentation/controler/login_state.dart';
import 'package:doctor_app/features/regisiter/presentation/controler/register_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterCubic extends Cubit<RegisterState> {
  RegisterCubic() : super(RegisterInitailState());
  static RegisterCubic get(context) => BlocProvider.of(context);
int? selectBox;
  void changeBottom(int index) {
    emit(InitailChangeBottomRegisterState());
    selectBox = index;
    emit(ChangeBottomRegisterState());
  }
}