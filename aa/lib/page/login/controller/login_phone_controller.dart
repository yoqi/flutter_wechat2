import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:leancloud_storage/leancloud.dart';
import 'package:skybot/base/base_getx.dart';
import 'package:skybot/controller/user_controller.dart';
import 'package:skybot/core.dart';
import 'package:skybot/language/strings.dart';
import 'package:skybot/utils/navigator_utils.dart';

import '../../main/main_page.dart';
import '../login_phone_page.dart';
import '../model/zone_code.dart';

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
