import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_bloc/bloc/counter_bloc.dart';
import 'counter_bloc/bloc_page.dart';
import 'counter_cubit/cubit/counter_cubit.dart';
import 'counter_cubit/cubit_page.dart';
import 'home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/bloc': (context) => BlocProvider(
              create: (context) => CounterBloc(),
              child: const BlocPage(),
            ),
        '/cubit': (context) => BlocProvider(
              create: (context) => CounterCubit(),
              child: const CubitPage(),
            ),
      },
      home: const HomePage(),
    );
  }
}
