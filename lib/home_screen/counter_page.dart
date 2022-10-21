part of '../main.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Bloc'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BlocBuilder<CounterBloc, CountersState>(builder: (context, state) {
            log('${state.countVal}');
            return Text(
              state.countVal.toString(),
              style: const TextStyle(fontSize: 35),
            );
          }),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  BlocProvider.of<CounterBloc>(context).incrementCount();
                },
                icon: const Icon(Icons.add),
              ),
              const SizedBox(width: 30),
              IconButton(
                onPressed: () {
                  BlocProvider.of<CounterBloc>(context).decrementCount();
                },
                icon: const Icon(Icons.remove),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
