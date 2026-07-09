import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:doctor/features/home/data/models/specialization_response.dart';
part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;

  const factory HomeState.specializationLoading() = SpecializationLoading;
  const factory HomeState.specializationLoaded(
    SpecializationResponse specializationResponse,
  ) = SpecializationLoaded;
  const factory HomeState.specializationError(String message) =
      SpecializationError;
}
