import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newburger/shared/CUBIT/qunatity_state.dart';

class quntityCubit extends Cubit<quantityStates>
{
  quntityCubit(): super(quantityInitialState());
  int quantity =1 ;

  static quntityCubit get(context) => BlocProvider.of(context);
  void minus()
  {

    quantity--;
    emit(quantityChangeState(quantity));
  }
  void plus()
  {
    quantity++;
    emit(quantityChangeState(quantity));
  }

}