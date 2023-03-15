import 'package:recipe_app/data/data_state.dart';

import '../../data/model/recipe_model.dart';
/// Dependencies Inversion principle
abstract class RecipeRepository {
  Future<DataState<List<RecipeModel>>> getAllRecipes();
}
