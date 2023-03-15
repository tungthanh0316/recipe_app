import 'package:recipe_app/data/data_state.dart';
import 'package:recipe_app/data/datasource/remote/service/recipe_service.dart';
import 'package:recipe_app/data/model/recipe_model.dart';

class RecipeRemoteDataSource {
  RecipeRemoteDataSource(this._service);

  final RecipeService _service;

  Future<DataState<List<RecipeModel>>> getAllRecipes() {
    return _service.getAllRecipes();
  }
}
