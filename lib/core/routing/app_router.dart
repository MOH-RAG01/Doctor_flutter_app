import 'package:doctor/core/dependency_injection.dart/dependency_injection.dart';
import 'package:doctor/core/routing/routes.dart';
import 'package:doctor/features/home/logic/home_cubit.dart';
import 'package:doctor/features/home/ui/home_screen.dart';
import 'package:doctor/features/login/logic/cubit/login_cubit.dart';
import 'package:doctor/features/login/ui/login_screen.dart';
import 'package:doctor/features/onboarding/onBoarding_screen.dart';
import 'package:doctor/features/signUp/logic/cubit/signup_cubit.dart';
import 'package:doctor/features/signUp/ui/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show BlocProvider;

class AppRouter {
  Route generateroute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );
      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SignupCubit>(),
            child: const SignUpScreen(),
          ),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<HomeCubit>()..getSpecializaions(),
            child: const HomeScreen(),
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
