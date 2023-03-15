part of 'recipe_list_bloc.dart';

enum RecipeListStatus {
  initState,
  loadingRecipesState,
  recipesLoadedState,
  recipesLoadingErrorState
}

@immutable
class RecipeListState {
  const RecipeListState({
    this.status = RecipeListStatus.initState,
    this.recipes = const <RecipeModel>[],
  });

  final RecipeListStatus status;
  final List<RecipeModel> recipes;

  RecipeListState copyWith(
      {RecipeListStatus? status, List<RecipeModel>? recipes}) {
    return RecipeListState(
      status: status ?? this.status,
      recipes: recipes??this.recipes
    );
  }

  static const RecipeListState initState = RecipeListState();
}
