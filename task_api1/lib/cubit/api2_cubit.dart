import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:task_api1/moduls/ApiModel2.dart';

part 'api2_state.dart';

class Api2Cubit extends Cubit<Api2State> {
  Api2Cubit() : super(Api2Initial());
  var respone = [];
  List<Api2Model> data = [];

  void getData() async {
    emit(GetDataLoadingState());
    await Dio().get('https://jsonplaceholder.typicode.com/posts').then((value) {
      respone = value.data;
      data = respone.map((e) => Api2Model.fromjson(e)).toList();
      // print(data[0].title);
    }).catchError((e) {
      print(e.toString());
    });
  }
}
