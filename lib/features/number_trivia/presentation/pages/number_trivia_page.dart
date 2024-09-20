import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:number_trivia/features/number_trivia/bloc/bloc/number_trivia_bloc.dart';

class NumberTriviaPage extends StatelessWidget {
  const NumberTriviaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
        ),
        body: BlocProvider(
          create: (_) => NumberTriviaBloc(),
          child: BlocConsumer<NumberTriviaBloc, NumberTriviaState>(
            listener: (context, state) {
              print(state);
            },
            builder: (context, state) => Center(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 10),
                    // Top half
                    Container(
                      // Third of the size of the screen
                      height: MediaQuery.of(context).size.height / 3,
                      // Message Text widgets / CircularLoadingIndicator
                      child: state.when(
                          initial: () => SizedBox(),
                          loading: () => SizedBox(
                                height: 1,
                                width: 20,
                                child: CircularProgressIndicator(),
                              ),
                          loaded: (trivia) => Text(trivia.text),
                          error: (errorMessage) => Text(errorMessage)),
                    ),
                    SizedBox(height: 20),
                    // Bottom half
                    Column(
                      children: <Widget>[
                        // TextField
                        const Placeholder(fallbackHeight: 40),
                        const SizedBox(height: 10),
                        Row(
                          children: <Widget>[
                            const Expanded(
                              // Search concrete button
                              child: Placeholder(fallbackHeight: 30),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              // Random button
                              child: ElevatedButton(
                                onPressed: () {
                                  BlocProvider.of<NumberTriviaBloc>(context)
                                      .add(
                                    const NumberTriviaEvent
                                        .getConcreteNumberTrivia(number: 123),
                                  );
                                },
                                child: Text('get random'),
                              ),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
