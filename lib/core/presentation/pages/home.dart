import 'package:flutter/material.dart';
import 'package:flutter_dailytask/core/presentation/widgets/appwide_appbar.dart';
import 'package:flutter_dailytask/helpers/constant/constant_ui.dart';
import 'package:flutter_dailytask/helpers/routing/app_route.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        actions: [],
        appTitle: 'Home',
        centerTitle: false,
        leading: null,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppUtils.changeSizedBoxHeight(14.h),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (ctx, index) => Container(
                  child: Card(
                    child: ListTile(
                      leading: Icon(Icons.settings),
                    ),
                  ),
                ),
                itemCount: 20,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.kDarkGreen,
        splashColor: AppColors.kBlue,
        onPressed: () {
          Navigator.pushNamed(context, PageConst.addNewTaskPage);
        },
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}
