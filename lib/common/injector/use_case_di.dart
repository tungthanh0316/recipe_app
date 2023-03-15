import 'package:get_it/get_it.dart';
import 'package:recipe_app/domain/use_case/recipe_use_case.dart';

class UseCaseDI {
  UseCaseDI._();

  static Future<void> init(GetIt injector) async {
    injector.registerFactory(() => RecipeUseCase(injector()));
  }
}
