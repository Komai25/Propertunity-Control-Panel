import 'package:get/get.dart';
import 'package:propertunity_control_panel/admin/admin_service.dart';

import '../model/admin.dart';
import '../model/user.dart';

class AdminController extends GetxController {
  RxBool isLoading = false.obs;

  List<Post>? allPosts;

  final adminService _adminService = adminService();

  void getPendingPosts() async {
    allPosts = await _adminService.getPendingPosts(User.token);
  }
}
