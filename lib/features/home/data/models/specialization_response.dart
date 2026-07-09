import 'package:json_annotation/json_annotation.dart';
part 'specialization_response.g.dart';

@JsonSerializable()
class SpecializationResponse {
  @JsonKey(name: "data")
  List<SpecializationData?>? dataList;
  SpecializationResponse({this.dataList});
  factory SpecializationResponse.fromJson(Map<String, dynamic> json) =>
      _$SpecializationResponseFromJson(json);
}

@JsonSerializable()
class SpecializationData {
  int? id;
  String? name;
  @JsonKey(name: 'doctors')
  List<Doctors?>? doctorsList;
  SpecializationData({this.id, this.name, this.doctorsList});
  factory SpecializationData.fromJson(Map<String, dynamic> json) =>
      _$SpecializationDataFromJson(json);
}

@JsonSerializable()
class Doctors {
  int? id;
  String? name;
  String? email;
  String? phone;
  String? photo;
  String? gender;
  String? degree;
  @JsonKey(name: 'appoint_price')
  int? price;
  Doctors({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.photo,
    this.gender,
    this.price,
  });
  factory Doctors.fromJson(Map<String, dynamic> json) =>
      _$DoctorsFromJson(json);
}
