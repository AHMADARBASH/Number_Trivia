import 'package:equatable/equatable.dart';
import '../../domain/entities/number_trivia.dart';

abstract class NumberTriviaState extends Equatable {
  const NumberTriviaState();
  @override
  List<Object?> get props => [];
}

class NumberTriviaInitialState extends NumberTriviaState {}

class NumberTriviaEmptyState extends NumberTriviaState {}

class NumberTriviaLoadingState extends NumberTriviaState {}

class NumberTriviaLoadedState extends NumberTriviaState {
  final NumberTrivia trivia;

  const NumberTriviaLoadedState({required this.trivia});
  @override
  List<Object?> get props => [];
}

class NumberTriviaErrorState extends NumberTriviaState {
  final String errorMessage;

  const NumberTriviaErrorState({required this.errorMessage});
  @override
  List<Object?> get props => [errorMessage];
}
