// import 'package:http/http.dart' as http;

// void sendMessageToTelegram(message) async {
//   try {
//     String botToken = '7306872848:AAFnJP-2-NE2eqXpp7zhbG6OQQ9nglw3GbA';
//     String chatId = '987654321';
//     final String apiUrl =
//         'https://api.telegram.org/bot$botToken/sendMessage?chat_id=$chatId&text=$message';
//     final response = await http.post(
//       Uri.parse(apiUrl),
//       body: {
//         'chat_id': chatId,
//         'text': message,
//       },
//     );
//     print(response);

//     if (response.statusCode != 200) {
//       throw Exception('Failed to send message to Telegram');
//     }
//   } catch (e) {
//     print('Error sending message to Telegram: $e');
//   }
// }
