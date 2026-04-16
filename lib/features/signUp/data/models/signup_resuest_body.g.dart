// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_resuest_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignupResuestBody _$SignupResuestBodyFromJson(Map<String, dynamic> json) =>
    SignupResuestBody(
      name: json['name'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      confirmPassword: json['password_confirmation'] as String,
      phoneNumber: json['phone'] as String,
      gender: json['gender'] as String,
    );

Map<String, dynamic> _$SignupResuestBodyToJson(SignupResuestBody instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
      'password_confirmation': instance.confirmPassword,
      'phone': instance.phoneNumber,
      'gender': instance.gender,
    };
