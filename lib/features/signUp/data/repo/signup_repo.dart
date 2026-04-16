import 'package:doctor/core/networking/api_result.dart';
import 'package:doctor/core/networking/api_services.dart';
import 'package:doctor/features/signUp/data/models/signup_response_body.dart';
import 'package:doctor/features/signUp/data/models/signup_resuest_body.dart';

class SignupRepo {
  final ApiServices apiServices;
  SignupRepo(this.apiServices);
  Future<ApiResult<SignupResponseBody>> signup(
    SignupResuestBody signupResuestBody,
  ) async {
    try {
      final response = await apiServices.register(signupResuestBody);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(e.toString());
    }
  }
}
