import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../app_injector.dart';



class AppConfig {
  AppConfig._();

  factory AppConfig() {
    return _appConfig;
  }

  static final AppConfig _appConfig = AppConfig._();

  Future<void> configApp() async {
    WidgetsFlutterBinding.ensureInitialized();
    await AppInjector.initDependencies();
    _handleErrors();
  }

  void _handleErrors() {
    FlutterError.onError = (FlutterErrorDetails details) {
      FlutterError.presentError(details);
    };

    ErrorWidget.builder = (FlutterErrorDetails details) {
      if (kReleaseMode) {
        return Container();
      }
      return Container(
        color: Colors.deepOrange,
        child: Center(
          child: Text(
            'Error: \n${details.exception.toString()} \n ${details.library}',
            textAlign: TextAlign.center,
          ),
        ),
      );
    };
  }
}
