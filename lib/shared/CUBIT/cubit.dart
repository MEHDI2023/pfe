import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newburger/features/sign_up/ui/sign_up_screen.dart';
import 'package:newburger/shared/CUBIT/state.dart';

import '../../features/historique/houst.dart';
import '../../features/list_res_screen/list.dart';
import '../../features/sign_in_screen/ui/sign_in_screen.dart';


class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitalState());

  static AppCubit get(context) => BlocProvider.of(context);
  int Cindex = 0;

  List<Map> TASKS = [];

  bool isBottom = false;
  IconData fabIcon = Icons.edit;
  List<Widget> screen = [Tasks(), Historique(),SignInScreen()];
  List<String> titles = ["Tasks", "Done", "archive"];

  void ChangeIndex(int index) {
    Cindex = index;
    emit(AppChangeBottombarState());
  }


}
