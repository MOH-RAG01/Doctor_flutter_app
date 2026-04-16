import 'package:json_annotation/json_annotation.dart';
part 'signup_response_body.g.dart';

@JsonSerializable()
class SignupResponseBody {
  final String message;
  final UserData data;

  SignupResponseBody({required this.message, required this.data});

  factory SignupResponseBody.fromJson(Map<String, dynamic> json) =>
      _$SignupResponseBodyFromJson(json);
}

@JsonSerializable()
class UserData {
  final String token;
  final String username;
  final bool? status;
  final int? code;
  UserData({
    required this.token,
    required this.username,
    this.status,
    this.code,
  });
  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}
