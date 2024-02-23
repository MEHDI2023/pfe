import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/historique/encour.dart';
import '../../features/historique/passee.dart';
import 'historiqueState.dart';

class HistoriqueCubit extends Cubit<AppState> {
  HistoriqueCubit() : super(AppInitalState());

  static HistoriqueCubit get(context) => BlocProvider.of(context);
  int Cindex = 0;

  List<Map> TASKS = [];


  List<Widget> screens = [CommandeEncour(),CartencourScreen()];
  List<String> titles = ["Tasks", "Done", ];

  void ChangeIndex(int index) {
    Cindex = index;
    emit(AppChangeBottomState());
  }


}