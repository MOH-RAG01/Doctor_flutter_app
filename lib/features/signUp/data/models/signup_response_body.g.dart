// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignupResponseBody _$SignupResponseBodyFromJson(Map<String, dynamic> json) =>
    SignupResponseBody(
      message: json['message'] as String,
      data: UserData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SignupResponseBodyToJson(SignupResponseBody instance) =>
    <String, dynamic>{'message': instance.message, 'data': instance.data};

UserData _$UserDataFromJson(Map<String, dynamic> json) => UserData(
  token: json['token'] as String,
  username: json['username'] as String,
  status: json['status'] as bool?,
  code: (json['code'] as num?)?.toInt(),
);

Map<String, dynamic> _$UserDataToJson(UserData instance) => <String, dynamic>{
  'token': instance.token,
  'username': instance.username,
  'status': instance.status,
  'code': instance.code,
};
