import 'package:bloc/bloc.dart';
import 'package:tobeto_mobil/api/bloc/education/education_bloc/education_event.dart';
import 'package:tobeto_mobil/api/bloc/education/education_bloc/education_state.dart';
import 'package:tobeto_mobil/api/repository/education_repository.dart';

class EducationBloc extends Bloc<EducationEvent, EducationState> {
  final EducationRepository educationRepository;

  EducationBloc({required this.educationRepository})
      : super(EducationInitial()) {
    on<AddEducation>(_onAdd);
    on<UpdateEducation>(_onUpdate);
    on<DeleteEducation>(_onDelete);
    on<GetEducation>(_onGet);
  }

  void _onAdd(AddEducation event, Emitter<EducationState> emit) async {
    emit(EducationLoading());

    final response = await educationRepository.addEducation(
      event.educationModel,
    );

    if (response) {
      emit(EducationSuccess());
    } else {
      emit(EducationError());
    }
  }

  void _onUpdate(UpdateEducation event, Emitter<EducationState> emit) async {
    emit(EducationLoading());

    final response = await educationRepository.updateEducation(
      event.educationModel,
    );

    if (response) {
      emit(EducationSuccess());
    } else {
      emit(EducationError());
    }
  }

  void _onDelete(DeleteEducation event, Emitter<EducationState> emit) async {
    emit(EducationLoading());

    final response = await educationRepository.deleteEducation(
      event.id,
    );

    if (response) {
      emit(EducationSuccess());
    } else {
      emit(EducationError());
    }
  }

  void _onGet(GetEducation event, Emitter<EducationState> emit) async {
    emit(EducationLoading());

    final educationModel = await educationRepository.getEducation(
      event.id,
    );

    if (educationModel != null) {
      emit(EducationLoaded(educationModel: educationModel));
    } else {
      emit(EducationError());
    }
  }
}