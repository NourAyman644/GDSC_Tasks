part of 'api2_cubit.dart';

@immutable
abstract class Api2State {}

class Api2Initial extends Api2State {}

class GetDataLoadingState extends Api2State {}

class getDataSucessState extends Api2State {}

class getDataErrorState extends Api2State {}
