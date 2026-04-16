import 'package:doctor/core/helpers/extentions.dart';
import 'package:doctor/core/routing/routes.dart';
import 'package:doctor/features/signUp/logic/cubit/signup_cubit.dart';
import 'package:doctor/features/signUp/logic/cubit/signup_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupBlocListener extends StatelessWidget {
  const SignupBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignupCubit, SignupState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Failure,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              builder: (context) => Center(child: CircularProgressIndicator()),
            );
          },
          success: (data) {
            context.pop();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Row(
                  children: [
                    Icon(Icons.check_circle, color: Colors.white),
                    SizedBox(width: 8),
                    Text('Your account has been registered successfully!'),
                  ],
                ),
                backgroundColor: Colors.green,
                duration: Duration(seconds: 2),
              ),
            );
            context.pushNamed(Routes.homeScreen);
          },
          failure: (errorMsg) {
            context.pop();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(errorMsg), backgroundColor: Colors.red),
            );
          },
        );
      },
      child: SizedBox.shrink(),
    );
  }
}
