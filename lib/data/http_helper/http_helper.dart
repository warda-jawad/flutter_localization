import 'dart:convert';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:localization/data/http_helper/iHttp_helper.dart';
import 'package:localization/model/user_model.dart';

class HttpHelper extends IHttpHelper {
  final Dio _dio;

  HttpHelper(this._dio) {
    _dio.interceptors.add(
      LogInterceptor(
        request: true,
        requestBody: true,
        responseBody: true,
      ),
    );
  }

  @override
  Future<UserModel> login(String email, String password) async {
      try {
        final formData = {
          "email": email,
          "password": password,
        };
        print('^^^^^^^^^^^^^^^^^^^^^^^^^^^^^');
        final response = await _dio.post("api/auth/login", data: formData);

        if (response.statusCode == 200) {
          var userObj = jsonDecode(response.data);
         UserModel userModel = UserModel.fromJson(userObj);
         return userModel;

        } else {
          throw Exception();
        }
      } catch (e) {
        throw Exception();
      }
    }
  }

//     try {
//       final response = await _dio.get(
//         'https://jsonplaceholder.typicode.com/users',
//       );
//       if (response.statusCode == 200) {
//         var jsonDataObject = jsonDecode(response.data);
//         UserModel usermodel = UserModel.fromJson(jsonDataObject[1]);
//        print(usermodel);
//         return usermodel;
//       } else {
//         throw Exception();
//       }
//     } catch (e) {
//       print(e);
//       throw Exception();
//     }
//   }
// }
