import 'package:bloc/bloc.dart';
import 'package:gemini_integration/bloc/bloc/Data_repository/ApiRespository.dart';
import 'package:meta/meta.dart';

part 'api_event.dart';
part 'api_state.dart';

class ApiBloc extends Bloc<ApiEvent, ApiState> {
  final ApiRepo _apiRepo;
  ApiBloc(this._apiRepo) : super(ApiInitial()) {
    on<ApiEvent>((event, emit) {
      // TODO: implement event handler
    });
  }

  void GetResponseTextFromApi(
      SendPromptToApi event, Emitter<ApiState> emit) async {
    String? response = await _apiRepo.sendChatMessage(event.prompt);

    if (response!.isEmpty) {
      emit(FailureResponseFromApi(error: "Response not recevied"));
    }
    emit(SucessResponseFromApi(text: response));
  }
}
