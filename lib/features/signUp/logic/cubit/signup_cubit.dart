import 'package:doctor/core/networking/api_result.dart';
import 'package:doctor/features/signUp/data/models/signup_resuest_body.dart';
import 'package:doctor/features/signUp/data/repo/signup_repo.dart';
import 'package:doctor/features/signUp/logic/cubit/signup_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupCubit extends Cubit<SignupState> {
  final SignupRepo _signupRepo;
  final formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  SignupCubit(this._signupRepo) : super(SignupState.initial());
  void emitSignupStates(SignupResuestBody signupResuestBody) async {
    emit(SignupState.loading());
    final result = await _signupRepo.signup(signupResuestBody);
    result.when(
      success: (signupResponse) => emit(SignupState.success(signupResponse)),
      failure: (error) => emit(SignupState.failure(error.toString())),
    );
  }
}
