import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:propertunity_control_panel/login/login_controller.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({
    super.key,
  });
  final _loginController = Get.put(LoginController());
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Login',
            style: TextStyle(
              fontFamily: 'Outfit',
            ),
          ),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TextField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Username',
                          labelStyle: TextStyle(
                            fontFamily: 'Outfit',
                          ),
                        ),
                        onChanged: (value) {
                          _loginController.phoneNumber = value.toString();
                          _loginController.initializeNumericPhoneNumber();
                        },
                      ),
                      const SizedBox(height: 20),
                      TextField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            fontFamily: 'Outfit',
                          ),
                        ),
                        obscureText: true,
                        onChanged: (value) {
                          _loginController.password = value;
                        },
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            _loginController.checkIsLogin();
                            _loginController.checkSubmitLogin();
                          }
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            fontFamily: 'Outfit',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: SvgPicture.asset(
                  'assets/images/logo.svg',
                  fit: BoxFit.scaleDown,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
