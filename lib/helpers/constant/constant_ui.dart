import 'package:flutter/material.dart';
import 'package:flutter_dailytask/helpers/extensions/hex_color_extension.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

//App Colors define here so we can update them in future which affect whole app.
class AppColors {
  static Color kDarkGreen = HexColor.fromHex("047245");
  static Color kMidGreen = HexColor.fromHex("048E56");
  static Color kLightGreen = HexColor.fromHex("05AD69");
  static Color kWhite = Colors.white;
  static Color kLightTeal = HexColor.fromHex("75DBE5");
  static Color kBlack = HexColor.fromHex("000000");
  static Color kGrey = HexColor.fromHex("333333");
  static Color kPurple = HexColor.fromHex("7200F8");
  static Color kBlue = HexColor.fromHex("0099F8");
  static Color kMidTeal = HexColor.fromHex("97E6DD");
  static Color kMidGrey = HexColor.fromHex("707070");
  static Color kBrownDark = HexColor.fromHex("685E5C");
  static Color kGreen = HexColor.fromHex("7BCC46");
  static Color kLightBrown = HexColor.fromHex("766C69");
  static Color kSkyBlue = HexColor.fromHex("D1FBFF");
  static Color kLightWhiteColor = HexColor.fromHex("cde7dc");
  static Color kBorderWeeklypreferencesColor = HexColor.fromHex("B8F0E6");
  static Color kAppBacgroundGradientColor1 = HexColor.fromHex("E5F7F4");
  static Color kAppBacgroundGradientColor2 = HexColor.fromHex("B1F0E4");
  static Color kCardBackgroundColorHistoryView = Color(0xFFbf3fcfc);
}

//App FontSizes define here.
class AppFontSizes {
  static double smallFontSize = 12.sp;
  static double mediumFontSize = 16.sp;
  static double largeFontSize = 20.sp;
  static double xLargeFontSize = 24.sp;
}

class AppFontWeights {
  static FontWeight thinFontWeight = FontWeight.w100;
  static FontWeight smallFontWeight = FontWeight.w300;
  static FontWeight mediumFontWeight = FontWeight.w500;
  static FontWeight boldFontWeight = FontWeight.w600;
}

//All app utils define here foreg: screen height,width, padding etc.
class AppUtils {
  // static double get screenHeight => Get.height;
  // static double get screenWidth => Get.width;
  // static bool get isOverLayOpen => Get.isOverlaysOpen;
  // static bool get isOverLayClose => Get.isOverlaysClosed;

  // static String get getCurrentRoute => Get.currentRoute;

  static final kBorderRadius = BorderRadius.circular(10.r);

  //full rounded button used in login view.
  static final kButtonCircularBorderRadius = BorderRadius.circular(20.r);

  //little rounded button for eg using in user profile of psw.
  static final kButtonLittleCircularBorderRadius = BorderRadius.circular(10.r);

  static const kDivider = Divider();

  static final kPaddingHorizontal = EdgeInsets.symmetric(horizontal: 10.w);
  static final kPaddingVertical = EdgeInsets.symmetric(vertical: 10.h);
  static final kPaddingAllSides = EdgeInsets.all(10.h);

  static final kSizedBoxHeight = SizedBox(
    height: 14.h,
  );

  static final kSizedBoxWidth = SizedBox(
    width: 14.w,
  );

  static SizedBox changeSizedBoxHeight(double height) {
    return SizedBox(
      height: height,
    );
  }

  static SizedBox changeSizedBoxWidth(double width) {
    return SizedBox(
      width: width,
    );
  }

  static Divider changeDivider(
      {double? height, double? endIndent, double? startIndent, Color? color}) {
    return Divider(
      endIndent: endIndent!,
      indent: startIndent!,
      thickness: height!,
      color: color!,
    );
  }
}

class AppImages {
  static const _img_directory = 'assets/images';
  static const kSplashBackgroundImage = '$_img_directory/splash_bg.svg';
  static const kSplashBackgroundImagePNG = '$_img_directory/splash_bg.png';
  static const kAppBackgroundImage = '$_img_directory/screen_bg.svg';
  static const kAppBackgroundImagePng = '$_img_directory/screen_bg.png';
  static const kSplashElderBerryLogo =
      '$_img_directory/elderberry_splash_logo.svg';
  static const kAppBarElderBerryHeader =
      '$_img_directory/elderberry_white_logo.svg';
  static const kBottomNavUpcomingImg = '$_img_directory/upcoming.svg';
  static const kBottomNavAvailavilityImg = '$_img_directory/availability.svg';
  static const kBottomNavProfileImg = '$_img_directory/profile.svg';
  static const kBottomNavHistoryImg = '$_img_directory/history.svg';
  static const kProfileEditFieldImage = '$_img_directory/edit.svg';
  static const kProfileEditBlueFieldImage = '$_img_directory/edit_blue.svg';
  static const kProfileDummyUserImage = '$_img_directory/img_andrea.svg';
  static const kHistoryDownloadIcon = '$_img_directory/copy_item.svg';
  //Booking details view:
  static const kDummyGoogleMapImage = '$_img_directory/google_map_dummy.jpeg';
  //profile image png
  static const kProfileImagePng = '$_img_directory/img_andrea.png';

  //Weekly Preferences PSW
  static const kAddImage = '$_img_directory/add.svg';
  static const kCloseImage = '$_img_directory/close.svg';
  //Schedule Exceptions Psw:
  static const kLeftArrow = '$_img_directory/left_arrow.svg';
  static const kRightArrow = '$_img_directory/right_arrow.svg';

  //carer module:
  //home screen:
  static const kTabImageScheduler = '$_img_directory/scheduler.svg';
  static const kTabImageCareRecievers = '$_img_directory/care_receivers.svg';
  static const kTabImageSettings = '$_img_directory/settings.svg';
  //history and upcoming image used earlier.
  //Add care reciever
  static const kHeartImage = '$_img_directory/down_arrow_purple.svg';
  static const kHeartBlueImage = '$_img_directory/down_arrow_blue.svg';
  static const kCheckSelectedImage = '$_img_directory/checkbox_selected.svg';
  static const kCheckUnSelectedImage =
      '$_img_directory/checkbox_unselected.svg';
}
