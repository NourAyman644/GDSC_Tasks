
import 'package:flutter_bloc/flutter_bloc.dart';
import 'counter_state.dart';


class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());
  int cnt=0;
  void increament(){
    cnt++;
    emit(Increament() );
  }
void decreament(){
    cnt--;
    emit(Decreament());
}
}
