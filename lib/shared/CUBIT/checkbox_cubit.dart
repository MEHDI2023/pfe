import 'package:flutter_bloc/flutter_bloc.dart';

class CheckboxCubit extends Cubit<List<String>> {
  CheckboxCubit() : super([]);

  void toggleCheckbox(String id) {
    if (state.contains(id)) {
      emit(List.from(state)..remove(id));
    } else {
      emit(List.from(state)..add(id));
    }
  }
}