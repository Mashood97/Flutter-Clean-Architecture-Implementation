import 'package:flutter/material.dart';
import 'package:flutter_dailytask/core/presentation/pages/add_task.dart';
import 'package:flutter_dailytask/core/presentation/pages/home.dart';
import 'package:flutter_dailytask/core/presentation/widgets/appwide_appbar.dart';

class PageConst {
  static const String task_home = "/";
  static const String addNewTaskPage = "/add-Task";
}

class OnGenerateRoute {
  static Route<dynamic> route(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case PageConst.task_home:
        {
          return materialBuilder(widget: Home());
        }
      case PageConst.addNewTaskPage:
        {
          return materialBuilder(widget: AddTask());
        }
      default:
        return materialBuilder(
          widget: ErrorPage(),
        );
    }
  }
}

class ErrorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        actions: [],
        appTitle: 'Error',
        centerTitle: false,
        leading: null,
      ),
      body: Center(
        child: Text("ERROR"),
      ),
    );
  }
}

MaterialPageRoute materialBuilder({Widget? widget}) {
  return MaterialPageRoute(builder: (_) => widget!);
}
