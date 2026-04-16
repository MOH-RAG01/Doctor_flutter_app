import 'package:json_annotation/json_annotation.dart';
part 'signup_resuest_body.g.dart';

@JsonSerializable()
class SignupResuestBody {
  final String name;
  final String email;
  final String password;
  @JsonKey(name: 'password_confirmation')
  final String confirmPassword;
  @JsonKey(name: 'phone')
  final String phoneNumber;
  final String gender;

  SignupResuestBody({
    required this.name,
    required this.email,
    required this.password,
    required this.confirmPassword,
    required this.phoneNumber,
    required this.gender,
  });

  Map<String, dynamic> toJson() => _$SignupResuestBodyToJson(this);
}
