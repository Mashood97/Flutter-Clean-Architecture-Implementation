import 'package:flutter_dailytask/core/data/sources/local_source/app_database.dart';
import 'package:flutter_dailytask/helpers/constant/constant_app.dart';

import '../../core/data/domain_repo_implementation/local_repository_impl.dart';
import '../../core/data/sources/local_source/local_data_source.dart';
import '../../core/data/sources/local_source/local_data_source_impl.dart';
import '../../core/domain/repository_declaration/local_repository.dart';
import '../../core/domain/use_cases/add_task_usecase.dart';
import '../../core/domain/use_cases/delete_task_usecase.dart';
import '../../core/domain/use_cases/get_task_usecase.dart';
import '../../core/presentation/cubit/task_cubit.dart';
import 'package:get_it/get_it.dart';

GetIt? sl = GetIt.instance;

//register singleton => This means it will always return the same object instance created once app wide.
//factory register => This means it will create and return a new instance always.
Future<void> init() async {
  //Bloc/Cubit

  sl!.registerFactory<TaskCubit>(() => TaskCubit(
        deleteTaskUseCase: sl!.call(),
        addTaskUseCase: sl!.call(),
        getAllTaskUseCase: sl!.call(),
      ));

  //Use cases
  sl!.registerLazySingleton<AddTaskUseCase>(
      () => AddTaskUseCase(localRepository: sl!.call()));
  sl!.registerLazySingleton<DeleteTaskUseCase>(
      () => DeleteTaskUseCase(localRepository: sl!.call()));
  sl!.registerLazySingleton<GetAllTaskUseCase>(
      () => GetAllTaskUseCase(localRepository: sl!.call()));
  //Repository
  sl!.registerLazySingleton<LocalRepository>(
      () => LocalRepositoryImplementation(localDataSource: sl!.call()));

  //Remote data source <Interface/Abstract Class>
  sl!.registerLazySingleton<LocalDataSource>(
      () => LocalDataSourceImpl(appDatabase: sl!.call()));

//App database (floor,moor etc)

  // sl!.registerSingletonAsync<AppDatabase>(() async => DBService().init());
  AppDatabase database =
      await $FloorAppDatabase.databaseBuilder('test.db').build();
  sl!.registerLazySingletonAsync(() async => database);

  //Remote Api Client Service

  //External for e.g(firebase etcs)
}
