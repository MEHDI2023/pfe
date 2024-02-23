import 'dart:math';

import '../helpers/shared.dart';
import '../models/Compte/order_item/OrderItemModel.dart';
import 'api.dart';
class GetAllOrderItems {
  // Assuming baseUrl is defined in shared.dart and includes the trailing '/'

  GetAllOrderItems() {
    // constructor body
  }

  Future<List<OrderItemModel>> getAllOrderItems() async {
  var response = await Api().get(url: '${baseUrl}Items');
  List<dynamic> productList = response['itemsMenu'];
  List<OrderItemModel> orderItems = productList
    .map((product) => OrderItemModel.fromJson(product))
    .toList();

  return orderItems;
}

}
