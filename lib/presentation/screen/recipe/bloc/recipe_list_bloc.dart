import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:recipe_app/common/injector/app_injector.dart';
import 'package:recipe_app/data/data_state.dart';
import 'package:recipe_app/data/model/recipe_model.dart';
import 'package:recipe_app/domain/use_case/recipe_use_case.dart';

part 'recipe_list_event.dart';

part 'recipe_list_state.dart';

class RecipeListBloc extends Bloc<RecipeListEvent, RecipeListState> {
  RecipeListBloc() : super(RecipeListState.initState) {
    on<RecipeListEvent>(_onGetAllRecipesEvent);
  }

  FutureOr<void> _onGetAllRecipesEvent(
      RecipeListEvent event, Emitter<RecipeListState> emit) async {
    // emit loadingRecipesState for showing indicator
    emit(
      state.copyWith(
        status: RecipeListStatus.loadingRecipesState,
      ),
    );
    final DataState<List<RecipeModel>> dataState =
        await getIt<RecipeUseCase>().getAllRecipes();
    if (dataState.data != null && dataState.error == null) {
      // load recipes success
      emit(
        state.copyWith(
            status: RecipeListStatus.recipesLoadedState,
            recipes: dataState.data),
      );
    } else {
      emit(
        state.copyWith(
          status: RecipeListStatus.recipesLoadingErrorState,
        ),
      );
    }
  }
}
