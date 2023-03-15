import 'package:get_it/get_it.dart';
import 'package:recipe_app/presentation/screen/recipe/bloc/recipe_list_bloc.dart';

class BlocDI {
  BlocDI._();

  static Future<void> init(GetIt injector) async {
    injector.registerFactory<RecipeListBloc>(() => RecipeListBloc());
  }
}
