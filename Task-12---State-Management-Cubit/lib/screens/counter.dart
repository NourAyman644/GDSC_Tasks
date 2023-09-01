import 'package:counter_by_cubit/cubit/counter_cubit.dart';
import 'package:counter_by_cubit/cubit/counter_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('counter'),
      ),
      body: Center(
        child: BlocBuilder<CounterCubit, CounterState>(
  builder: (context, state) {
    return Text(
          '${BlocProvider.of<CounterCubit>(context).cnt.toString()}',
          style: const TextStyle(
            fontSize: 35,
          ),
        );
  },
),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          BlocBuilder<CounterCubit, CounterState>(
            builder: (context, state) {
              return FloatingActionButton(
                onPressed: () {
                  BlocProvider.of<CounterCubit>(context).increament();
                  print(BlocProvider.of<CounterCubit>(context).cnt);
                },
                child: const Icon(
                  Icons.add,
                ),
              );
            },
          ),
          const SizedBox(height: 5,),
          BlocBuilder<CounterCubit, CounterState>(
            builder: (context,state) {
              return FloatingActionButton(
                onPressed: () {
                  BlocProvider.of<CounterCubit>(context).decreament();
                  print(BlocProvider.of<CounterCubit>(context).cnt);
                },
                child: const Icon(
                  Icons.remove,
                ),
              );
            }
          ),
        ],
      ),
    );
  }
}
