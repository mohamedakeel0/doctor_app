



import 'package:doctor_app/features/login/presentation/controler/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubic extends Cubit<LoginState> {
  LoginCubic() : super(LoginInitailState());
  static LoginCubic get(context) => BlocProvider.of(context);
int? selectBox;
  void changeBottom(int index) {
    emit(InitailChangeBottomState());
    selectBox = index;
    emit(ChangeBottomState());
  }
}