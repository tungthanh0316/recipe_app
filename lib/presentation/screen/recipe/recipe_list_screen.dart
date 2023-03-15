import 'package:flutter/material.dart';
import 'package:recipe_app/data/model/recipe_model.dart';
import 'package:recipe_app/presentation/item/recipe_item.dart';
import 'package:recipe_app/presentation/screen/recipe/bloc/recipe_list_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../common/injector/app_injector.dart';
import '../../../generated/l10n.dart';

class RecipeListScreen extends StatelessWidget {
  const RecipeListScreen({Key? key}) : super(key: key);

  static const String routePath = '/RecipeListScreen';

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RecipeListBloc>(
      create: (_) => getIt<RecipeListBloc>(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(S.of(context).recipe_list_title),
        ),
        body: const RecipeListBodyWidget(),
      ),
    );
  }
}

class RecipeListBodyWidget extends StatelessWidget {
  const RecipeListBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BlocBuilder<RecipeListBloc, RecipeListState>(
          builder: (BuildContext context, RecipeListState state) {
        switch (state.status) {
          case RecipeListStatus.initState:
            return ElevatedButton(
              onPressed: () {
                // add event for loading all recipes
                context.read<RecipeListBloc>().add(LoadingAllRecipeEvent());
              },
              // Using S.of(context) for localization purpose in the future
              child: Text(S.of(context).get_recipe),
            );
          case RecipeListStatus.loadingRecipesState:
            return const CircularProgressIndicator();
          case RecipeListStatus.recipesLoadedState:
            final List<RecipeModel> recipes = state.recipes;
            return ListView.builder(
                itemCount: recipes.length,
                itemBuilder: (_, int index) {
                  final RecipeModel model = recipes[index];
                  return RecipeItem(model: model);
                });
          case RecipeListStatus.recipesLoadingErrorState:
            return ElevatedButton(
              onPressed: () {
                context.read<RecipeListBloc>().add(LoadingAllRecipeEvent());
              },
              child: Text(
                S.of(context).get_recipe_error,
                textAlign: TextAlign.center,
              ),
            );
        }
      }),
    );
  }
}
