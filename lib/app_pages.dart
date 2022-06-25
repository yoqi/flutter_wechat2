import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:wechat/page/login/login_phone_check_page.dart';
import 'package:wechat/page/login/login_phone_page.dart';
import 'package:wechat/page/login/register_page.dart';
import 'package:wechat/page/login/register_success_page.dart';
import 'package:wechat/page/login/safety_verify_page.dart';
import 'package:wechat/page/login/splash_page.dart';
import 'package:wechat/page/login/verify_machine_page.dart';
import 'package:wechat/page/login/zone_code_page.dart';
import 'package:wechat/page/main/main_page.dart';
import 'package:wechat/page/util/crop_image_page.dart';
import 'package:wechat/page/util/webview_page.dart';

class AppPages {

  static final List<GetPage> routes = [

    _getPage(
      name: '/',
      page: () => SplashPage(),
    ),
    _getPage(
      name: RegisterPage.routeName,
      page: () => RegisterPage(),
    ),
    _getPage(
      name: CropImagePage.routeName,
      page: () => CropImagePage(),
    ),
    _getPage(
      name: ZoneCodePage.routeName,
      page: () => ZoneCodePage(),
    ),
    _getPage(
      name: WebViewPage.routeName,
      page: () => const WebViewPage(),
    ),
    _getPage(
      name: VerifyMachinePage.routeName,
      page: () => const VerifyMachinePage(),
    ),
    _getPage(
      name: SafetyVerifyPage.routeName,
      page: () => const SafetyVerifyPage(),
    ),
    _getPage(
      name: RegisterSuccessPage.routeName,
      page: () => const RegisterSuccessPage(),
    ),
    _getPage(
      name: LoginPhoneCheckPage.routeName,
      page: () => LoginPhoneCheckPage(),
    ),
    _getPage(
      name: LoginPhonePage.routeName,
      page: () => LoginPhonePage(),
    ),
    _getPage(
      name: MainPage.routeName,
      page: () => const MainPage(),
    ),
  ];

  static GetPage _getPage({
    required String name,
    required GetPageBuilder page,
    Bindings? binding,
  }) {
    return GetPage(
      name: name,
      binding: binding,
      page: () {
        debugPrint('pageName=$name');
        return page();
      },
    );
  }
}

class CommonBinding<S> extends Bindings {
  final InstanceBuilderCallback<S> builder;

  CommonBinding(this.builder);

  @override
  void dependencies() {
    Get.lazyPut<S>(builder);
  }
}