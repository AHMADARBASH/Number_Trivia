import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/number_trivia.dart';
import '../../data/repositories/number_trivia_repo.dart';

part 'number_trivia_bloc.freezed.dart';
part 'number_trivia_event.dart';
part 'number_trivia_state.dart';

class NumberTriviaBloc extends Bloc<NumberTriviaEvent, NumberTriviaState> {
  NumberTriviaBloc() : super(_Initial()) {
    on<_getConcreteNumberTrivia>((event, emit) async {
      emit(_loading());
      final repo = NumberTriviaRepository();
      try {
        final tirvia = await repo.getConcreteNumberTrivia(number: event.number);
        emit(_loaded(trivia: tirvia));
      } catch (e) {
        emit(_error(errorMessage: e.toString()));
      }
    });
  }
}
