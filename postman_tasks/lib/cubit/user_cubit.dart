import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:postman_tasks/cubit/user_state.dart';

import '../data/endpoints.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(UserInitial());

  void SignIn() async {
    await Dio()
        .post(EndPoints.baseurl + EndPoints.userSignin, data: {
          "email": "nourhanayman3120@gmail.com",
          "password": "anas123",
        })
        .then((value) => print(value.data))
        .catchError((e) {
          print(e.toString());
        });
  }

  void SendCode() async {
    await Dio()
        .post(EndPoints.baseurl + EndPoints.userSendCode, data: {
          "email": "nourhanayman3120@gmail.com",
        })
        .then((value) => print(value.data))
        .catchError((e) => print(e.toString()));
  }

  void changePassword() async {
    await Dio()
        .patch(EndPoints.baseurl + EndPoints.userChangeForgottenPassword,
            data: {
              "email": "nourhanayman3120@gmail.com",
              "password": "anas123",
              "confirmPassword": "anas123",
              "code": "716301"
            })
        .then((value) => print(value.data))
        .catchError((e) => e.toString());
  }

  void getUser() async {
    String token =
        'FOODAPI eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY1MGNjMzAwZGJmZGY2ZDk1YWM2ZTUxZSIsImVtYWlsIjoibm91cmhhbmF5bWFuMzEyMEBnbWFpbC5jb20iLCJuYW1lIjoiYW5hcyB1c2VyIiwicm9sZSI6InVzZXIiLCJpYXQiOjE2OTUzNDAwMTJ9.yYamW_3DAiUcQXXgrSr4iRmgpXTmXTsyu9wzjM4N-ao';
    Map<String, dynamic> decodedToken = JwtDecoder.decode(token);
    var id = decodedToken['id'];
    print(id);

    await Dio(
      BaseOptions(
        headers: {'token': token},
      ),
    )
        .get(EndPoints.baseurl + EndPoints.getUserEndpoint(id))
        .then((value) => print(value))
        .catchError((e) {
      print(e.toString());
    });
  }

  void DeleteUser() async {
    String token =
        'FOODAPI eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY1MGNjMzAwZGJmZGY2ZDk1YWM2ZTUxZSIsImVtYWlsIjoibm91cmhhbmF5bWFuMzEyMEBnbWFpbC5jb20iLCJuYW1lIjoiYW5hcyB1c2VyIiwicm9sZSI6InVzZXIiLCJpYXQiOjE2OTUzNDAwMTJ9.yYamW_3DAiUcQXXgrSr4iRmgpXTmXTsyu9wzjM4N-ao';
    Map<String, dynamic> decodedToken = JwtDecoder.decode(token);
    var id = decodedToken['id'];
    print(id);

    await Dio(
      BaseOptions(
        headers: {'token': token},
      ),
    )
        .delete(EndPoints.baseurl + EndPoints.deleteUser,
            queryParameters: {'id': id})
        .then((value) => print(value))
        .catchError((e) {
          print(e.toString());
        });
  }
}

// POST /user/signin  // done
// POST /user/send-code //done
// PATCH user/change-forgotten-password //done
// GET /user/get-user/64a1fc7dc5b2fe879468c637
// DELETE /user/delete?id=64a1fa760db6e1f0ad3c52e6
