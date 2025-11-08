import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/latihan_bloc_satu_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (_) => LatihanBlocSatuBloc(),
        child: const CounterPage(),
      ),
    );
  }
}

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Latihan Bloc Satu")),
      body: Center(
        child: BlocBuilder<LatihanBlocSatuBloc, LatihanBlocSatuState>(
          builder: (context, state) {
            final counter = (state as LatihanBlocSatuInitial).counter;
            return Text(
              '$counter',
              style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            );
          },
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 'minus',
            onPressed: () {
              context.read<LatihanBlocSatuBloc>().add(KurangEvent());
            },
            child: const Icon(Icons.remove),
          ),
          const SizedBox(width: 10),
          FloatingActionButton(
            heroTag: 'plus',
            onPressed: () {
              context.read<LatihanBlocSatuBloc>().add(TambahEvent());
            },
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
