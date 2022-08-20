part of 'initial_route_cubit.dart';

abstract class InitialRouteState extends Equatable {
  const InitialRouteState();
}

// Appointment INITIAL
class InitialRouteInitial extends InitialRouteState {
  const InitialRouteInitial();
  @override
  List<Object> get props => [];
}

// Appointment LOADING
class InitialRouteLoading extends InitialRouteState {
  const InitialRouteLoading();
  @override
  List<Object> get props => [];
}

// Appointment LOADING
class InitialRouteLoaded extends InitialRouteState {
  final bool isLoggedIn;
  const InitialRouteLoaded(this.isLoggedIn);
  @override
  List<Object> get props => [];
}

// Appointment ERROR
class InitialRouteError extends InitialRouteState {
  final String message;
  const InitialRouteError(this.message);
  @override
  List<Object> get props => [];
}
