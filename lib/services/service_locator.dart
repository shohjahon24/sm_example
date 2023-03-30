import 'package:get_it/get_it.dart';
import 'package:sm_example/scoped_models/error_model.dart';
import 'package:sm_example/scoped_models/home_model.dart';
import 'package:sm_example/scoped_models/success_model.dart';
import 'package:sm_example/services/storage_service.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  // register services
  locator.registerLazySingleton<StorageService>(() => StorageService());
  locator.registerFactory<HomeModel>(() => HomeModel());
  locator.registerFactory<SuccessModel>(() => SuccessModel());
  locator.registerFactory<ErrorModel>(() => ErrorModel());
}
