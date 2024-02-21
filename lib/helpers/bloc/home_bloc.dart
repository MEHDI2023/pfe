import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newburger/helpers/bloc/home_state.dart';
import 'package:newburger/models/Compte/category/CategoryModel.dart';
import 'package:newburger/models/Compte/order_item/OrderItemModel.dart';

part 'home_event.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
   
  
  static HomeBloc get(BuildContext context)=>BlocProvider.of(context);
    HomeBloc() : super(const HomeState()) {
    
    on<HomeInitialEvent>(mapHomeInitialEvent);
    //on<HomeProductMapFavoriteEvent>(mapHomeFavoriteEvent);
    on<HomeNavigateEvent>(mapHomeNavigateEvent);

    on<HomeAddProductToCartEvent>(_mapAddProductToCartEvent);
    on<HomeChangeProductQuantity>(_mapHomeChangeProductQuantityEvent);
    on<HomeDeleteProdcutFromCartEvent>(_mapDeleteProductFromCartEvent);
  }
  


  Future<void> mapHomeInitialEvent(
    HomeInitialEvent event, Emitter<HomeState> emit) async {
  emit(state.copyWith(status: StateStatus.loading));
  try {
    final List<CategoryModel> categoryItems = await GetAllCategoryItems().getAllCategoryItems();
    final List<OrderItemModel> orderItems = await GetAllOrderItems().getAllOrderItems();
    log(orderItems[0].name);
        log(categoryItems[0].name);

    emit(state.copyWith(
      OrderItems: orderItems, 
      status: StateStatus.loaded,
      categoryItems: categoryItems,
    ));
    log(state.categoryItems.length.toString());
  } catch (e) {
    emit(state.copyWith(status: StateStatus.error));
    log(e.toString()); // Log the error
  }
}

  /*FutureOr<void> mapHomeFavoriteEvent(
      HomeProductMapFavoriteEvent event, Emitter<HomeState> emit,) {
   final newState = state.OrderItemsFavorite[event.index] ? false : true;
   final  newList = List<bool>.from(state.OrderItemsFavorite);
   newList[event.index] = newState;
   emit(state.copyWith(OrderItemsFavorite: newList));

  }*/

  

  FutureOr<void> mapHomeNavigateEvent(
      HomeNavigateEvent event, Emitter<HomeState> emit) {
    emit(state.copyWith(navigatorIndex: event.currentIndex));
  }

  

/*void togeleCart(int key) {
    prouctAdedd[key] = !prouctAdedd[key]!;
    emit(AddedCart(index:key , state: prouctAdedd[key]!));
    }*/

  FutureOr<void> _mapAddProductToCartEvent(HomeAddProductToCartEvent event, Emitter<HomeState> emit) {
    final oldState =Map<int,int>.from(state.cartIems);
    oldState.addEntries({event.productId:1}.entries);
    emit(state.copyWith(cartIems: oldState));

  }

  FutureOr<void> _mapHomeChangeProductQuantityEvent(HomeChangeProductQuantity event, Emitter<HomeState> emit) {
    final oldstate =Map<int,int>.from(state.cartIems);
  
    if(event.isIncremntEvnt)
    {
      oldstate[event.productId]=oldstate[event.productId]!+1;
    }else if(event.isIncremntEvnt==false && oldstate[event.productId]!>1)
    {
        oldstate[event.productId]=oldstate[event.productId]!-1;
        
    }
    emit(state.copyWith(cartIems:oldstate));
  }

  FutureOr<void> _mapDeleteProductFromCartEvent(HomeDeleteProdcutFromCartEvent event, Emitter<HomeState> emit) {
    final oldState =Map<int,int>.from(state.cartIems);
    oldState.remove(event.productId);
    emit(state.copyWith(cartIems: oldState));
  }
}

class GetAllOrderItems {
  getAllOrderItems() {}
}

class GetAllCategoryItems {
  getAllCategoryItems() {}
}
