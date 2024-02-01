import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class SingupApi extends GetxController {
  final baseUrl = "https://a45a-2001-448a-4062-1fc9-9bf-61bc-6d5-99cd.ngrok-free.app/api/";
  final endpoint = "user/signup/member";

  Future<void> signUpMember(String name, String email, String password) async {
    final url = Uri.parse('$baseUrl$endpoint');
    print(url);
    final response = await http.post(
      url,
      body: {
        'name': name,
        'email': email,
        'password': password,
      },
      headers: {
        'Accept': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      print('Berhasil: ${response.body}');
    } else {
      print('Gagal: ${response.statusCode}');
    }
  }
}
