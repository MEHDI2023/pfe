import 'package:equatable/equatable.dart';
import 'package:newburger/models/Compte/category/CategoryModel.dart';

import 'package:newburger/models/Compte/order_item/OrderItemModel.dart';

class HomeState extends Equatable{
  final List<OrderItemModel> OrderItems ;
    final List<CategoryModel> categoryItems ; 
 
  final List<bool> productsFavorite;  
  final Map<int,int> cartIems;
  final StateStatus status;
  final int navigatorIndex ;

  const HomeState({this.cartIems = const {},this.OrderItems=const [] ,this.categoryItems=const[],this.productsFavorite=const [], this.status = StateStatus.initial,this.navigatorIndex=1});
  @override
  List<Object?> get props => [OrderItems,productsFavorite,cartIems,status,navigatorIndex,categoryItems];
  HomeState copyWith({
    List<CategoryModel>? categoryItems,
    List<OrderItemModel>? OrderItems ,
    List<bool>? productsFavorite,
    StateStatus? status,
    int? navigatorIndex,
     Map<int,int>? cartIems
  }) {
    return HomeState(
      navigatorIndex: navigatorIndex ?? this.navigatorIndex,
      OrderItems: OrderItems ?? this.OrderItems,
      productsFavorite: productsFavorite ?? this.productsFavorite,
      status: status ?? this.status,
      categoryItems: categoryItems ?? this.categoryItems,
      cartIems: cartIems ?? this.cartIems,
    );
  }
  
}
enum StateStatus { initial, loading, loaded ,failed,error}