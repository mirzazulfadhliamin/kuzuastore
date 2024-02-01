import 'package:get/get.dart';

import 'logic.dart';

class SingupBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignupLogic());
  }
}
