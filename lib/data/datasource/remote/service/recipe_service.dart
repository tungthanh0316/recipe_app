import 'dart:convert';

import 'package:recipe_app/data/model/recipe_model.dart';

import '../../../data_state.dart';
import 'package:http/http.dart' as http;

class RecipeService {
  Future<DataState<List<RecipeModel>>> getAllRecipes() async {
    try {
      final http.Response response = await http
          .get(Uri.parse(
              'https://hf-android-app.s3-eu-west-1.amazonaws.com/android-test/recipes.json'))
          .timeout(const Duration(seconds: 20));
      final List<dynamic> decodedResponse =
          jsonDecode(response.body) as List<dynamic>;
      final List<RecipeModel> recipes = decodedResponse
          .map((dynamic json) => RecipeModel.fromJson(json))
          .toList();
      return DataSuccess<List<RecipeModel>>(recipes);
    } catch (e) {
      return DataFailed<List<RecipeModel>>(e);
    }
  }
}
