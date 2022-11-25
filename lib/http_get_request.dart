import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart';
import 'package:river_pod/user_model.dart';

class ApiService {
  final _url = 'https://reqres.in/api/users?page=2';
  Future<List<UserModel>> getUsers() async {
    Response response = await get(Uri.parse(_url));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body)['data'];
      //var rest = UserDataModel.fromJson(data);
      print('rest: $data');
      return data
          .map<UserModel>((json) => UserModel.fromJson(json))
          .toList();
    } else {
      throw Exception('Failed to load data');
    }
  }
}

final provider = FutureProvider<List<UserModel>>((ref) async {
  return await ApiService().getUsers().then((value) {
    if (kDebugMode) {
      print('value: ${value.first.firstname}');
    }
    return value;
  });
});
