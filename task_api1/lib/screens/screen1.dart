import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_api1/cubit/api1_cubit.dart';
import 'package:task_api1/cubit/api1_state.dart';
import 'package:task_api1/screens/screen2.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<Api1Cubit, Api1State>(
        builder: (context, state) {
          return Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Screen2()));
                    },
                    child: const Text('Api 2')),
                Expanded(
                  child: ListView.builder(
                    itemCount: BlocProvider.of<Api1Cubit>(context).data.length,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 160,
                        width: double.infinity,
                        color: Colors.purple,
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.only(bottom: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'id :  ${BlocProvider.of<Api1Cubit>(context).data[index].id.toString()}',
                              style: Theme.of(context).textTheme.displayMedium,
                            ),
                            Text(
                              'user id : ${BlocProvider.of<Api1Cubit>(context).data[index].userId.toString()}',
                              style: Theme.of(context).textTheme.displayMedium,
                            ),
                            Text(
                              'title : ${BlocProvider.of<Api1Cubit>(context).data[index].title.toString()}',
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
