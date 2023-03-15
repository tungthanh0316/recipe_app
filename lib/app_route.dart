import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipe_app/presentation/screen/recipe/recipe_list_screen.dart';

class AppRoute {
  static dynamic getRoute() {
    return <String, Widget Function(BuildContext)>{
      RecipeListScreen.routePath: (BuildContext context) =>
          const RecipeListScreen()
    };
  }
}
