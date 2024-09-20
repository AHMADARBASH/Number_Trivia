part of 'number_trivia_bloc.dart';

@freezed
class NumberTriviaEvent with _$NumberTriviaEvent {
  const factory NumberTriviaEvent.getConcreteNumberTrivia(
      {required int number}) = _getConcreteNumberTrivia;
}
