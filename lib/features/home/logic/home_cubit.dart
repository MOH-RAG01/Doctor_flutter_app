import 'package:doctor/core/networking/api_result.dart';
import 'package:doctor/features/home/data/repos/specialization_repo.dart';
import 'package:doctor/features/home/logic/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  final SpecializationRepo _specializationRepo;
  HomeCubit(this._specializationRepo) : super(HomeState.initial());

  void getSpecializaions() async {
    emit(const HomeState.specializationLoading());
    final response = await _specializationRepo.getSpecialization();
    response.when(
      success: (data) {
        emit(HomeState.specializationLoaded(data));
      },
      failure: (error) {
        emit(HomeState.specializationError(error.toString()));
      },
    );
  }
}
