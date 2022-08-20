import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:lunettes/constants/app_const.dart';

import 'package:lunettes/driver/model/sample_user.dart';

class SampleRepository {
  Future<List<SampleUser>> getSampleUserInfo(int userId) async {
    String url = '${Constants.API_HOST} /sample/link';
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final data = json.decode(response.body.toString()) as List;
        List<SampleUser> user =
            data.map((j) => SampleUser.fromJson(j)).toList();
        if (user.isNotEmpty) {
          print(user[0]);
        }

        return user;
      } else {
        return null;
      }
    } catch (e) {
      print(e);
      throw Exception("Error $e");
    }
  }
}
