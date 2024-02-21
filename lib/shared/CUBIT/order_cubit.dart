import 'package:flutter_bloc/flutter_bloc.dart';

class OrderCubit extends Cubit<String> {
  OrderCubit() : super('');

  void selectDeliveryTime(String time) {
    emit(time);
  }

}
