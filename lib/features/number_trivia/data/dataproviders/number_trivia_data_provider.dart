import 'package:number_trivia/core/helpers/api_helper.dart';

class NumberTriviaDataProvider {
  final apiHelper = APIHelper();

  Future<Map<String, dynamic>> getConcreteNumberTrivia(
      {required int number}) async {
    return await apiHelper.get(URL: 'http://numbersapi.com/$number');
  }
}
