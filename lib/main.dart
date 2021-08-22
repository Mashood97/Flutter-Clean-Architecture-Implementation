import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/presentation/cubit/task_cubit.dart';
import 'helpers/dependency_injection/injection_container.dart' as di;
import 'helpers/routing/app_route.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await di.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<TaskCubit>(
      create: (_) => di.sl!<TaskCubit>()..getAllTasks(),
      child: ScreenUtilInit(
        builder: () => MaterialApp(
          title: 'My Daily Task App',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          onGenerateRoute: OnGenerateRoute.route,
        ),
        designSize: const Size(360, 650),
      ),
    );
  }
}
