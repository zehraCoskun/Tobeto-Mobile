import 'package:bloc/bloc.dart';
import 'package:tobeto_mobil/api/bloc/education/educations_bloc/educations_event.dart';
import 'package:tobeto_mobil/api/bloc/education/educations_bloc/educations_state.dart';
import 'package:tobeto_mobil/api/repository/education_repository.dart';

class EducationsBloc extends Bloc<EducationsEvent, EducationsState> {
  final EducationRepository educationRepository;

  EducationsBloc({
    required this.educationRepository,
  }) : super(EducationsInitial()) {
    on<GetAllEducations>(_onGetAll);
  }

  void _onGetAll(
      GetAllEducations event, Emitter<EducationsState> emit) async {
    emit(EducationsLoading());

    final educationModels = await educationRepository.getAllEducations();

    emit(EducationsLoaded(educationModels: educationModels));
  }
}