import 'package:counter_by_cubit/cubit/counter_cubit.dart';
import 'package:counter_by_cubit/cubit/counter_state.dart';
import 'package:counter_by_cubit/screens/counter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Counter(),
      ),
    );
  }
}