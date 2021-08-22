import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dailytask/helpers/constant/constant_ui.dart';

class CustomAppBar extends AppBar {
  final Widget? leading;
  final List<Widget>? actions;
  final String? appTitle;
  final bool? centerTitle;

  CustomAppBar({
    this.appTitle,
    this.actions,
    this.leading,
    this.centerTitle,
  }) : super(
          backgroundColor: AppColors.kLightGreen,
          actionsIconTheme: IconThemeData(color: AppColors.kWhite),
          iconTheme: IconThemeData(
            color: AppColors.kWhite,
          ),
          brightness: Brightness.dark,
          backwardsCompatibility: false,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: AppColors.kDarkGreen,
          ),
          title: Text(
            appTitle!,
            style: TextStyle(
              fontSize: AppFontSizes.largeFontSize,
              fontWeight: AppFontWeights.mediumFontWeight,
              color: AppColors.kWhite,
              decoration: TextDecoration.none,
            ),
          ),
          centerTitle: centerTitle,
          elevation: 0.0,
          bottomOpacity: 0.0,
          actions: actions,
        );
}
