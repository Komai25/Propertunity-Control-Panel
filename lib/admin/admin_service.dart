import 'package:get/get.dart';
import 'package:propertunity_control_panel/model/admin.dart';

import '../resources/server_manager.dart';
import 'package:http/http.dart' as http;

class adminService {
  List<Post>? _pendingPosts;
  List<Post>? _rentPosts;
  List<Post>? _salePosts;

  var url = Uri.parse(
    ServerSet.domainNameServer + ServerSet.getpendingposts,
  );

  Future getPendingPosts(String token) async {
    try {
      http.Response response = await http.get(
        url,
        headers: {
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );
      if (response.statusCode == 200) {
        _rentPosts = pendingPostsFromJson(response.body).rentPosts;
        _salePosts = pendingPostsFromJson(response.body).salePosts;

        _pendingPosts?.addAll(_rentPosts!);
        _pendingPosts?.addAll(_salePosts!);

        return _pendingPosts;
      }
    } catch (e) {
      Get.snackbar("Error !", e.toString());
      return [];
    }
  }
}
