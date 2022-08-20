import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:lunettes/passenger/bloc/cubit/sample_cubit/repositories/sample_repository.dart';
import 'package:lunettes/passenger/model/sample_user.dart';

part 'sample_state.dart';

class SampleCubit extends Cubit<SampleState> {
  List<SampleUser> _userInfo;
  SampleRepository sampleRepository;
  SampleCubit(this.sampleRepository) : super(SampleInitial());
  Future<List<SampleUser>> getUser(int userId) async {
    try {
      emit(SampleLoading());
      final List<SampleUser> data =
          await sampleRepository.getSampleUserInfo(userId);
      emit(SampleLoaded(data));
      _userInfo = data;
    } on Exception {
      emit(SampleError("Error, please check your internet connection."));
    }
    return _userInfo;
  }
}
