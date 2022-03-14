import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management_provider/counter_cubit.dart';
import 'package:state_management_provider/states.dart';

class CounterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CounterCubit(),
      child: BlocConsumer<CounterCubit, CounterStates>(
        listener: (BuildContext context, state) {},
        builder: (BuildContext context, state) {
          CounterCubit cubit = CounterCubit.get(context);
          return Scaffold(
            body: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      cubit.decreaseNumber();
                    },
                    child: const Icon(Icons.remove),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    '${cubit.number}',
                    style: TextStyle(fontSize: 30),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      cubit.increaseNumber();
                    },
                    child: const Icon(Icons.add),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
