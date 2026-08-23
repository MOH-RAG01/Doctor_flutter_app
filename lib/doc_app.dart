import 'package:doctor/core/routing/app_router.dart';
import 'package:doctor/core/routing/routes.dart';
import 'package:doctor/core/theming/app_colors.dart';
import 'package:doctor/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocApp extends StatelessWidget {
  final AppRouter appRouter;
  final bool isLoggedIn;

  const DocApp({super.key, required this.appRouter, required this.isLoggedIn});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        title: 'Doc App',
        theme: ThemeData(
          primaryColor: AppColors.primaryBlue,
          scaffoldBackgroundColor: Colors.white,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: isLoggedIn ? Routes.homeScreen : Routes.loginScreen,
        onGenerateRoute: appRouter.generateroute,
      ),
    );
  }
}
