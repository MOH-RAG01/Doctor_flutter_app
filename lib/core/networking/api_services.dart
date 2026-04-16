import 'package:dio/dio.dart';
import 'package:doctor/core/networking/api_constants.dart';
import 'package:doctor/features/login/data/models/login_request_body.dart';
import 'package:doctor/features/login/data/models/login_response.dart';
import 'package:doctor/features/signUp/data/models/signup_response_body.dart';
import 'package:doctor/features/signUp/data/models/signup_resuest_body.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
part 'api_services.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiServices {
  factory ApiServices(Dio dio, {String baseUrl}) = _ApiServices;

  @POST(ApiConstants.loginEndpoint)
  Future<LoginResponse> login(@Body() LoginRequestBody loginRequestBody);
  @POST(ApiConstants.registerEndpoint)
  Future<SignupResponseBody> register(
    @Body() SignupResuestBody signupResuestBody,
  );
}
