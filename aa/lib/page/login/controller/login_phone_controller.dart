import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:skybot/base/base_getx.dart';
import 'package:skybot/controller/user_controller.dart';
import 'package:skybot/utils/navigator_utils.dart';

import '../../main/main_page.dart';

class LoginPhoneController extends BaseXController {
  TextEditingController passwordController =
      TextEditingController(text: 'Bb123456');
  String phone = Get.arguments;

  @override
  onInit() {
    super.onInit();
    passwordController.addListener(() {
      update();
    });
  }

  login() async {
    lcPost(() async {
      var bool = await UserController.instance
          .login(phone, passwordController.text.toString());
      if (bool) {
        NavigatorUtils.offAllNamed(MainPage.routeName);
      }
    });
  }
}
