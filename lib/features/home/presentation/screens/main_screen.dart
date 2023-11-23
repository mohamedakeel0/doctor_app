import 'package:doctor_app/core/resources/color_manager.dart';
import 'package:doctor_app/features/home/presentation/controler/home_cubic.dart';
import 'package:doctor_app/features/home/presentation/controler/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create:(context) => HomeCubic(),
      child: BlocConsumer<HomeCubic, HomeState>(listener:(context, state) {

      }, builder: (context, state) {
        var cubit = HomeCubic.get(context);
        return Scaffold( body: cubit.screens[cubit.currentindex],
          bottomNavigationBar: BottomNavigationBar( type: BottomNavigationBarType.shifting,elevation: 0.0,
            items: cubit.bottomItem,backgroundColor: ColorManager.primary,
            currentIndex: cubit.currentindex,
            onTap: (index) {
              cubit.changeBottomNavBar(index);
            },
          ),);
      },

      ),
    );
  }
}
