import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:http/http.dart' as http;
import 'package:google_sign_in/google_sign_in.dart';

String apiUrl = "http://192.241.131.169/api";

class ApiService {
  googleLogin(data) async {
    try {
      EasyLoading.show();
      final uri = Uri.parse('${apiUrl}/social-login');
      print(uri);
      http.Response response = await http.post(uri, body: data);
      print(response.body);
      print(response.statusCode);

      EasyLoading.dismiss();
    } catch (e) {
      print(e);
    }
  }
}
