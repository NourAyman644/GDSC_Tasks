import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_api1/cubit/api1_cubit.dart';
import 'package:task_api1/cubit/api2_cubit.dart';
import 'package:task_api1/screens/screen1.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => Api1Cubit()..getData(),
        ),
        BlocProvider(create: (context) => Api2Cubit()..getData()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            textTheme: const TextTheme(
                displayMedium: TextStyle(
          fontSize: 20,
        ))),
        home: const Screen1(),
      ),
    );
  }
}
