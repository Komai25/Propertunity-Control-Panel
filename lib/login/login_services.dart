import 'package:get/get.dart';

import 'package:http/http.dart' as http;

import '../model/auth.dart';
import '../model/user.dart';
import '../resources/server_manager.dart';

class LoginService {
  String message = "";

  var url = Uri.parse(ServerSet.domainNameServer + ServerSet.loginEndPoints);

  Future<bool> loginWithPhoneNumber(
    String phone,
    String password,
  ) async {
    try {
      var response = await http.post(
        url,
        body: {
          "phone": phone,
          "password": password,
        },
      );
      print(response.body);
      if (response.statusCode == 200 || response.statusCode == 201) {
        var status = authFromJson(response.body).status;
        User.token = authFromJson(response.body).accessToken!;
        return status;
      } else if (response.statusCode == 401) {
        message = authFromJson(response.body).message;
        var status = authFromJson(response.body).status;
        return status;
      }
    } catch (e) {
      Get.snackbar(
        "Error !",
        e.toString(),
      );
    }
    return false;
  }
}
