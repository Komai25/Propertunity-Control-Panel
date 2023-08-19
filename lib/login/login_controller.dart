import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:propertunity_control_panel/admin/admin_screen.dart';
import 'package:propertunity_control_panel/login/login_services.dart';

class LoginController extends GetxController {
  final LoginService _loginService = LoginService();
  String phoneNumber = '';
  String numericPhoneNumber = '';
  String password = '';
  RxBool isObscured = true.obs;
  bool isLogin = false;

  void initializeNumericPhoneNumber() {
    phoneNumber = phoneNumber.replaceAll(
      'PhoneNumber(countryISOCode: SY, countryCode: +963, number: ',
      '',
    );
    numericPhoneNumber = phoneNumber.replaceAll(
      ')',
      '',
    );
  }

  Future checkSubmitLogin() async {
    isLogin = await _loginService.loginWithPhoneNumber(
      numericPhoneNumber,
      password,
    );
  }

  void checkIsLogin() async {
    Get.dialog(
      barrierDismissible: false,
      Dialog(
        elevation: 0,
        backgroundColor: Colors.transparent,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              "assets/json/loading.json",
              width: double.infinity,
              height: 150,
            ),
          ],
        ),
      ),
    );
    await checkSubmitLogin();
    if (isLogin) {
      //isLogin
      Get.back(closeOverlays: true);
      Get.dialog(
        barrierDismissible: false,
        Dialog(
          elevation: 0,
          backgroundColor: Colors.transparent,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset(
                "assets/json/success.json",
                width: double.infinity,
                height: 150,
              ),
            ],
          ),
        ),
      );
      Timer(
        const Duration(milliseconds: 950),
        () {
          Get.back(closeOverlays: true);
        },
      );
      Timer(
        const Duration(seconds: 1),
        () {
          Get.off(
            () => AdminScreen(),
            transition: Transition.fade,
            duration: const Duration(
              milliseconds: 700,
            ),
          );
        },
      );
    } else {
      Get.back(closeOverlays: true);
      Get.dialog(
        barrierDismissible: false,
        Dialog(
          elevation: 0,
          backgroundColor: Colors.transparent,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset(
                "assets/json/error.json",
                width: double.infinity,
                height: 150,
              ),
              Text(
                _loginService.message,
                style: const TextStyle(
                  fontFamily: 'Outfit',
                  fontSize: 20,
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
      );
      Timer(
        const Duration(seconds: 3),
        () {
          Get.back(closeOverlays: true);
        },
      );
    }
  }
}
