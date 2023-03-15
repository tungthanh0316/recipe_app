import 'package:get_it/get_it.dart';

import '../../data/repository/recipe_repository_impl.dart';
import '../../domain/repository/recipe_repository.dart';

class RepositoryDI {
  RepositoryDI._();

  static Future<void> init(GetIt injector) async {
    injector.registerFactory<RecipeRepository>(
        () => RecipeRepositoryImpl(injector()));
  }
}
