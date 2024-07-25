part of 'api_bloc.dart';

@immutable
sealed class ApiEvent {}

final class SendPromptToApi extends ApiEvent {
  final String prompt;

  SendPromptToApi({required this.prompt});
}
