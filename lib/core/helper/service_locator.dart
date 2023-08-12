import 'package:bookly/core/helper/api_services.dart';
import 'package:bookly/features/home/data/repos/home_repo_implementation.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final serviceLocator = GetIt.instance;

void setupServiceLocator() {

  serviceLocator.registerSingleton<ApiService>(ApiService(Dio()));

  serviceLocator.registerSingleton<HomeRepoImpl>(HomeRepoImpl(
    serviceLocator.get<ApiService>(),
  ));
}
