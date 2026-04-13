import 'package:doctor/core/networking/api_result.dart';
import 'package:doctor/core/networking/api_services.dart';
import 'package:doctor/features/login/data/models/login_request_body.dart';
import 'package:doctor/features/login/data/models/login_response.dart';

class LoginRepo {
  final ApiServices apiServices;
  LoginRepo(this.apiServices);
  Future<ApiResult<LoginResponse>> login(
    LoginRequestBody loginRequestBody,
  ) async {
    try {
      final response = await apiServices.login(loginRequestBody);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(e.toString());
    }
  }
}
