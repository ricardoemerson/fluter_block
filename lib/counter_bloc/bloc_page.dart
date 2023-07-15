import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/counter_bloc.dart';

class BlocPage extends StatelessWidget {
  const BlocPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BlocPage'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                return Text(
                  '${state.counter}',
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    context.read<CounterBloc>().add(CounterDecrement());
                  },
                  iconSize: 32,
                  color: Colors.blue[600],
                  padding: const EdgeInsets.all(15),
                  icon: const Icon(Icons.remove),
                ),
                IconButton(
                  onPressed: () {
                    context.read<CounterBloc>().add(CounterIncrement());
                  },
                  iconSize: 32,
                  padding: const EdgeInsets.all(15),
                  color: Colors.blue[600],
                  icon: const Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
