import 'package:google_generative_ai/google_generative_ai.dart';

class ApiRepo {
  late final GenerativeModel geminiVisionProModel;
  late final ChatSession chatSession;

   


  Future<String?> sendChatMessage(String prompt) async {
    try {
      final response = await chatSession.sendMessage(Content.text(prompt));
      final text = response.text;
      if (text == null) {
        return "";
      } else {
        return response.text;
      }
    } catch (e) {
      rethrow;
    }
  }
}
