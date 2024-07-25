part of 'api_bloc.dart';

@immutable
sealed class ApiState {}

final class ApiInitial extends ApiState {}

final class SucessResponseFromApi extends ApiState {
  final String text;

  SucessResponseFromApi({required this.text});
}

final class FailureResponseFromApi extends ApiState {
  final String error;

  FailureResponseFromApi({required this.error});
}
