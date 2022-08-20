import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';
import 'package:lunettes/cubit/repository/initial_route_repository.dart';

part 'initial_route_state.dart';

class InitialRouteCubit extends Cubit<InitialRouteState> {
  InitialRouteRepository appFeedbackRepository;
  InitialRouteCubit(this.appFeedbackRepository) : super(InitialRouteInitial());
  Future<void> hasLoggedIn() async {
    bool _isLoggedIn = false;
    try {
      emit(InitialRouteLoading());
      final data = await appFeedbackRepository.sampleRepo(_isLoggedIn);
      // call InitialRouteLoaded if the await is successful
      emit(InitialRouteLoaded(data));
    } catch (e) {
      emit(InitialRouteError(e.toString()));
    }
  }
}
