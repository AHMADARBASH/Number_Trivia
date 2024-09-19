import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/util/input_converter.dart';
import '../../domain/usecases/get_concrete_number_trivia.dart';
import '../../domain/usecases/get_random_number_trivia.dart';

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
  }) : super(NumberTriviaInitialState()) {
    on<GetTriviaForConcreteNumber>(_onGetConcrete);
  }
  Future<void> _onGetConcrete(
      GetTriviaForConcreteNumber event, Emitter<NumberTriviaState> emit) async {
    emit(NumberTriviaLoadingState());

    final failureOrTrivia = await getConcreteNumberTrivia.call(
        number: int.parse(event.numberString));

    failureOrTrivia.fold(
      (failure) async => emit(
        const NumberTriviaErrorState(errorMessage: 'Server Error'),
      ),
      (trivia) async => emit(
        NumberTriviaLoadedState(trivia: trivia),
      ),
    );
  }
}
