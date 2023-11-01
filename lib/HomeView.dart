import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:third_object/Cubit/CounterCubit.dart';
import 'package:third_object/Cubit/CounterState.dart';

class HomePage extends StatefulWidget {
  HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int teamA = 0;
  int teamB = 0;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {
        if (state is CounterAplus) {
          teamA = BlocProvider.of<CounterCubit>(context).teamAcounter;
        } else if (state is CounterBplus) {
          teamB = BlocProvider.of<CounterCubit>(context).teamBcounter;
        } else {
          teamA = 0;
          teamB = 0;
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            title: const Text('Points Counter'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const Text(
                        'Team A',
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                      Text(
                        '$teamA',
                        style: const TextStyle(
                          fontSize: 190,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          maximumSize: const Size(170, 50),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .getcurrentcounter(team: 'A', num: 1);
                        },
                        child: const Text(
                          'Add 1 Point',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          maximumSize: const Size(170, 50),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .getcurrentcounter(team: 'A', num: 2);
                        },
                        child: const Text(
                          'Add 2 Point',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          maximumSize: const Size(170, 50),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .getcurrentcounter(team: 'A', num: 3);
                        },
                        child: const Text(
                          'Add 3 Point',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 380,
                    child: VerticalDivider(
                      color: Colors.grey,
                      thickness: 2,
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        'Team B',
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                      Text(
                        '$teamB',
                        style: const TextStyle(
                          fontSize: 190,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          maximumSize: const Size(170, 50),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .getcurrentcounter(team: 'B', num: 1);
                        },
                        child: const Text(
                          'Add 1 Point',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          maximumSize: const Size(170, 50),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .getcurrentcounter(team: 'B', num: 2);
                        },
                        child: const Text(
                          'Add 2 Point',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          maximumSize: const Size(170, 50),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .getcurrentcounter(team: 'B', num: 3);
                        },
                        child: const Text(
                          'Add 3 Point',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  maximumSize: const Size(150, 50),
                ),
                onPressed: () {
                  BlocProvider.of<CounterCubit>(context)
                      .getcurrentcounter(team: 'set', num: 0);
                },
                child: const Text(
                  'Reset',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
