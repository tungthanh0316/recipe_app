

import 'package:get_it/get_it.dart';
import 'package:recipe_app/data/datasource/remote/recipe_remote_data_source.dart';

class RemoteDataSourceDI {
  RemoteDataSourceDI._();

  static Future<void> init(GetIt injector) async {
    injector.registerFactory(() => RecipeRemoteDataSource(injector()));
  }
}
