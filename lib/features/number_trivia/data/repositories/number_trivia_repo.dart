import '../dataproviders/number_trivia_data_provider.dart';
import '../models/number_trivia.dart';

class NumberTriviaRepository {
  final dataProvider = NumberTriviaDataProvider();

  Future<NumberTrivia> getConcreteNumberTrivia({required int number}) async {
    final response = await dataProvider.getConcreteNumberTrivia(number: number);
    return NumberTrivia(text: response['text'], number: response['number']);
  }
}
