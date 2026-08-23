import 'package:doctor/core/dependency_injection.dart/dependency_injection.dart';
import 'package:doctor/core/helpers/constants.dart';
import 'package:doctor/core/helpers/shared_pref_helper.dart';
import 'package:doctor/core/routing/app_router.dart';
import 'package:doctor/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  // AppFlavorsConfig.initialize();
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  setupGetIt();
  bool isLoggedIn = await checkLoggedUser();
  runApp(DocApp(appRouter: AppRouter(), isLoggedIn: isLoggedIn));
}

Future<bool> checkLoggedUser() async {
  String? userToken = await SharedPrefHelper.getSecureData(
    SharedPrefKeys.userToken,
  );

  if (userToken == null || userToken.isEmpty) {
    return false;
  } else {
    return true;
  }
}
