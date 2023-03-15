import 'package:get_it/get_it.dart';
import 'package:recipe_app/data/datasource/remote/service/recipe_service.dart';

class ServiceDI {
  ServiceDI._();

  static Future<void> init(GetIt injector) async {
    injector.registerFactory(() => RecipeService());
  }
}
