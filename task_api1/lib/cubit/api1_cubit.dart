import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:task_api1/cubit/api1_state.dart';
import '../moduls/api1model.dart';

class Api1Cubit extends Cubit<Api1State> {
  Api1Cubit() : super(Api1Initial());
  var respone = [];
  List<ApiModel> data = [];

  void getData() async {
    emit(getDataLoadingState());
    await Dio()
        .get('https://jsonplaceholder.typicode.com/albums')
        .then((value) {
      respone = value.data;
      data = respone.map((e) => ApiModel.fromjson(e)).toList();
      // print(data[0].title);
    }).catchError((e) {
      print(e.toString());
    });
  }
}
