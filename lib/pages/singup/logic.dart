import 'package:get/get.dart';
import 'package:kuzuastore/controller/api/singup.dart';


class SignupLogic extends GetxController {
  final SingupApi _signupApi = Get.put(SingupApi());

  late RxString name;
  late RxString email;
  late RxString password;

  @override
  void onInit() {
    name = ''.obs;
    email = ''.obs;
    password = ''.obs;
    super.onInit();
  }

  void setName(String value) => name.value = value;
  void setEmail(String value) => email.value = value;
  void setPassword(String value) => password.value = value;

  Future<void> signup() async {
    try {
      await _signupApi.signUpMember(name.value, email.value, password.value);

    } catch (error) {

      print('Gagal: $error');
    }
  }
}
