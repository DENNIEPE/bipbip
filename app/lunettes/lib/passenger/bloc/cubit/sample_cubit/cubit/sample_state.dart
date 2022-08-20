part of 'sample_cubit.dart';

abstract class SampleState extends Equatable {
  const SampleState();
}

// Customer INITIAL
class SampleInitial extends SampleState {
  const SampleInitial();
  @override
  List<Object> get props => [];
}

// Customer LOADING
class SampleLoading extends SampleState {
  const SampleLoading();
  @override
  List<Object> get props => [];
}

// Customer LOADING
class SampleLoaded extends SampleState {
  final List<SampleUser> user;
  const SampleLoaded(this.user);
  @override
  List<Object> get props => [];
}

// Customer ERROR
class SampleError extends SampleState {
  final String message;
  const SampleError(this.message);
  @override
  List<Object> get props => [];
}
