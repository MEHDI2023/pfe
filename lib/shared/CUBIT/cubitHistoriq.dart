import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/historique/encour.dart';
import '../../features/historique/passee.dart';
import 'historiqueState.dart';

class historiqueCubit extends Cubit<AppState> {
  historiqueCubit() : super(AppInitalState());

  static historiqueCubit get(context) => BlocProvider.of(context);
  int Cindex = 0;

  List<Map> TASKS = [];


  List<Widget> screens = [hhhhh(),CartencourScreen()];
  List<String> titles = ["Tasks", "Done", ];

  void ChangeIndex(int index) {
    Cindex = index;
    emit(AppChangeBottomState());
  }


}