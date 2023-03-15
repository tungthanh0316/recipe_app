import 'package:get_it/get_it.dart';
import 'package:recipe_app/common/injector/remote_data_source_di.dart';
import 'package:recipe_app/common/injector/repository_di.dart';
import 'package:recipe_app/common/injector/service_di.dart';
import 'package:recipe_app/common/injector/use_case_di.dart';

import 'bloc_di.dart';

final GetIt getIt = GetIt.instance;
class AppInjector {
  AppInjector._();

  static Future<void> initDependencies() async {
    await BlocDI.init(getIt);
    await ServiceDI.init(getIt);
    await RemoteDataSourceDI.init(getIt);
    await RepositoryDI.init(getIt);
    await UseCaseDI.init(getIt);
  }
}