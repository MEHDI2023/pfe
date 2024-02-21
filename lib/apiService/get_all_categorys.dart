
import '../helpers/shared.dart';
import '../models/Compte/category/CategoryModel.dart';
import 'api.dart';

class GetAllCategoryItems {
  // Assuming baseUrl is defined in shared.dart and includes the trailing '/'

  GetAllCategoryItems() {
    // constructor body
  }

  Future<List<CategoryModel>> getAllCategoryItems() async {
  var response = await Api().get(url: '${baseUrl}Categories');
  List<dynamic> categorysList = response['categories'];

  List<CategoryModel> categoryItems = categorysList
    .map((category) => CategoryModel.fromJson(category))
    .toList();

  return categoryItems;
}

}
