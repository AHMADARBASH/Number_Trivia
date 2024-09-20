import 'package:freezed_annotation/freezed_annotation.dart';

part 'number_trivia.freezed.dart';
part 'number_trivia.g.dart';

@freezed
class NumberTrivia with _$NumberTrivia {
  const factory NumberTrivia({
    required String text,
    required int number,
  }) = _NumberTrivia;

  factory NumberTrivia.fromJson(Map<String, Object?> json) =>
      _$NumberTriviaFromJson(json);
}
