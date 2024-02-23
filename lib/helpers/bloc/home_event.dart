part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

class HomeInitialEvent extends HomeEvent {}

class HomeProductMapFavoriteEvent extends HomeEvent {
 final int index;

  HomeProductMapFavoriteEvent({
   required this.index
  });
}
class HomeChangeColor extends HomeEvent
{
  final int id;

  HomeChangeColor({required this.id});
  
}

class HomeAddProductToCartEvent extends HomeEvent{
  final int productId;

  HomeAddProductToCartEvent({required this.productId});
}

class HomeChangeProductQuantity extends HomeEvent{
  final bool isIncremntEvnt;
  final int productId;

  HomeChangeProductQuantity({required this.isIncremntEvnt, required this.productId});
}

class HomeDeleteProdcutFromCartEvent extends HomeEvent{
  final int productId;

  HomeDeleteProdcutFromCartEvent({required this.productId});
} 


class HomeNavigateProfileEvent extends HomeEvent {}

class HomeNavigateEvent extends HomeEvent {
  final int currentIndex;
  HomeNavigateEvent({required this.currentIndex});

}

class HomeNavigateSearchEvent extends HomeEvent {}