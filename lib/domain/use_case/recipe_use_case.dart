import 'package:recipe_app/data/data_state.dart';
import 'package:recipe_app/domain/repository/recipe_repository.dart';

import '../../data/model/recipe_model.dart';

class RecipeUseCase {
  RecipeUseCase(this._repository);

  final RecipeRepository _repository;

  Future<DataState<List<RecipeModel>>> getAllRecipes() {
    return _repository.getAllRecipes();
  }
}
