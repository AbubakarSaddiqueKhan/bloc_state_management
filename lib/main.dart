import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:flutter_bloc_state_management/bloc/counter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),

      // add the bloc provider at the top of the widget tree
      // give the bloc inside the template type of the block provider
      home: BlocProvider<CounterBloc>(
        create: (context) => CounterBloc(),
        child: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
//  make all of the possible function's that you wants to perform
// must import : 'package:provider/provider.dart' to use the provider . of
  void _incrementCounter() {
    // must gives the block type as the template type of the provider
    Provider.of<CounterBloc>(context, listen: false)
        .
        // add is used to add the event's in the bloc
        add(IncrementCounterEvent());
  }

  void _decrementCounter() {
    // must make it's listenable false
    Provider.of<CounterBloc>(context, listen: false)
        .add(DecrementCounterEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            // wrap the widget by the bloc builder where you want's to change
            // add the bloc and the state in the template type of the boc builder
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                return Text(
                  //  from the state you can access that variable that cause any type of the change in the ui
                  state.counter.toString(),
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    // on the press event you can add the
                    // must add the bloc as the  template type in the context . read
                    // context.read<CounterBloc>().add(IncrementCounterEvent());
                    _incrementCounter();
                  },
                  child: Icon(Icons.add),
                ),
                FloatingActionButton(
                  onPressed: () {
                    // context is used to used to rebuild that only widget when there is some of the change in it
                    // context.read<CounterBloc>().add(DecrementCounterEvent());
                    _decrementCounter();
                  },
                  child: Icon(Icons.delete),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
