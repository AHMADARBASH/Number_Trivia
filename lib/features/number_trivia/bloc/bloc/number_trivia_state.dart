part of 'number_trivia_bloc.dart';

@freezed
class NumberTriviaState with _$NumberTriviaState {
  const factory NumberTriviaState.initial() = _Initial;
  const factory NumberTriviaState.loading() = _loading;
  const factory NumberTriviaState.loaded({required NumberTrivia trivia}) =
      _loaded;
  const factory NumberTriviaState.error({required String errorMessage}) =
      _error;
}
