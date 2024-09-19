import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:number_trivia/features/number_trivia/presentation/bloc/number_trivia_state.dart';
import '../../../../core/dependency_injection/di_setup.dart';
import '../bloc/number_trivia_bloc.dart';
import '../bloc/number_trivia_event.dart';

class NumberTriviaPage extends StatelessWidget {
  const NumberTriviaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
        ),
        body: BlocProvider(
          create: (_) => sl<NumberTriviaBloc>(),
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
                      child: state is NumberTriviaLoadingState
                          ? CircularProgressIndicator()
                          : state is NumberTriviaErrorState
                              ? Text(state.errorMessage)
                              : state is NumberTriviaLoadedState
                                  ? Text(state.trivia.text)
                                  : Placeholder(),
                    ),
                    SizedBox(height: 20),
                    // Bottom half
                    Column(
                      children: <Widget>[
                        // TextField
                        Placeholder(fallbackHeight: 40),
                        SizedBox(height: 10),
                        Row(
                          children: <Widget>[
                            Expanded(
                              // Search concrete button
                              child: Placeholder(fallbackHeight: 30),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              // Random button
                              child: ElevatedButton(
                                onPressed: () {
                                  BlocProvider.of<NumberTriviaBloc>(context)
                                      .add(
                                    GetTriviaForConcreteNumber(
                                        numberString: '123'),
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
