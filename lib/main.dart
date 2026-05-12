import 'package:doctor/core/dependency_injection.dart/dependency_injection.dart';
import 'package:doctor/core/routing/app_router.dart';
import 'package:doctor/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  // AppFlavorsConfig.initialize();
  await ScreenUtil.ensureScreenSize();
  setupGetIt();
  runApp(DocApp(appRouter: AppRouter()));
}
