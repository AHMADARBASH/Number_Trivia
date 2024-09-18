import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:number_trivia/core/error/failure.dart';
import 'package:number_trivia/core/util/input_converter.dart';
import 'package:number_trivia/features/number_trivia/domain/usecases/get_concrete_number_trivia.dart';
import 'package:number_trivia/features/number_trivia/domain/usecases/get_random_number_trivia.dart';

import 'number_trivia_event.dart';
import 'number_trivia_state.dart';

class NumberTriviaBloc extends Bloc<NumberTriviaEvent, NumberTriviaState> {
  final GetConcreteNumberTrivia getConcreteNumberTrivia;
  final GetRandomNumberTrivia getRandomNumberTrivia;
  final InputConverter inputConverter;
  NumberTriviaBloc({
    required this.getConcreteNumberTrivia,
    required this.getRandomNumberTrivia,
    required this.inputConverter,
  }) : super(NumberTriviaInitialState());

  @override
  void on<E extends NumberTriviaEvent>(
      EventHandler<E, NumberTriviaState> handler,
      {EventTransformer<E>? transformer}) {
    on<GetTriviaForConcreteNumber>(
      (event, emit) async {
        emit(NumberTriviaLoadingState());
        final inputEither =
            inputConverter.stringtoUnsignedInt(event.numberString);
        inputEither.fold(
            (failure) => emit(
                const NumberTriviaErrorState(errorMessage: 'Invalid input')),
            (integer) async {
          final failureOrTrivia =
              await getConcreteNumberTrivia.call(number: integer);
          failureOrTrivia.fold(
            (failure) => NumberTriviaErrorState(
              errorMessage: failure is ServerFailure
                  ? 'Server Error'
                  : failure is CacheFailure
                      ? 'Cache failure'
                      : 'Unexpected Error',
            ),
            (trivia) => emit(
              NumberTriviaLoadedState(trivia: trivia),
            ),
          );
        });
      },
    );
    super.on(handler, transformer: transformer);
  }
}
