import 'package:doctor/core/networking/api_result.dart';
import 'package:doctor/core/networking/api_services.dart';
import 'package:doctor/features/home/data/models/specialization_response.dart';

class SpecializationRepo {
  final ApiServices _apiServices;
  SpecializationRepo(this._apiServices);

  Future<ApiResult<SpecializationResponse>> getSpecialization() async {
    try {
      final response = await _apiServices.getSpecialization();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(error.toString());
    }
  }
}
