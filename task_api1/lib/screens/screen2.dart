import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_api1/cubit/api2_cubit.dart';

import '../cubit/api1_cubit.dart';
import '../cubit/api1_state.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<Api2Cubit, Api2State>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Api 1')),
                Expanded(
                  child: ListView.builder(
                    itemCount: BlocProvider.of<Api2Cubit>(context).data.length,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 350,
                        width: double.infinity,
                        color: Colors.pink,
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.only(bottom: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'id :  ${BlocProvider.of<Api2Cubit>(context).data[index].id.toString()}',
                              style: Theme.of(context).textTheme.displayMedium,
                            ),
                            Text(
                              'user id : ${BlocProvider.of<Api2Cubit>(context).data[index].userId.toString()}',
                              style: Theme.of(context).textTheme.displayMedium,
                            ),
                            Text(
                              'title : ${BlocProvider.of<Api2Cubit>(context).data[index].title.toString()}',
                              style: Theme.of(context).textTheme.displayMedium,
                            ),
                            Text(
                              'title : ${BlocProvider.of<Api2Cubit>(context).data[index].body.toString()}',
                              style: Theme.of(context).textTheme.displayMedium,
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
