import 'package:recipe_app/data/data_state.dart';
import 'package:recipe_app/data/datasource/remote/recipe_remote_data_source.dart';
import 'package:recipe_app/data/model/recipe_model.dart';
import 'package:recipe_app/domain/repository/recipe_repository.dart';

class RecipeRepositoryImpl extends RecipeRepository {
  RecipeRepositoryImpl(this._remoteDataSource);

  final RecipeRemoteDataSource _remoteDataSource;

  @override
  Future<DataState<List<RecipeModel>>> getAllRecipes() async {
    return _remoteDataSource.getAllRecipes();
  }
}
