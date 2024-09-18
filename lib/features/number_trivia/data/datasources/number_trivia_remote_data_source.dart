import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../../../core/error/excpetions.dart';
import '../../domain/entities/number_trivia.dart';
import '../models/number_trivia_model.dart';

abstract class NumberTriviaRemoteDataSource {
  Future<NumberTrivia> getConcreteNumberTrivia(int number);
  Future<NumberTrivia> getRandomNumberTrivia();
}

class NumberTriviaRemoteDataSourceImpl implements NumberTriviaRemoteDataSource {
  final http.Client client;

  NumberTriviaRemoteDataSourceImpl({required this.client});

  @override
  Future<NumberTrivia> getConcreteNumberTrivia(int number) async {
    final response = await client.get(Uri.parse('http://numbersapi/$number'),
        headers: {'Content-Type': 'application/json'});
    if (response.statusCode == 200) {
      return NumberTriviaModel.fromJson(json.decode(response.body));
    } else {
      throw ServerException();
    }
  }

  @override
  Future<NumberTrivia> getRandomNumberTrivia() async {
    final response = await client.get(Uri.parse('http://numbersapi/random'),
        headers: {'Content-Type': 'application/json'});
    if (response.statusCode == 200) {
      return NumberTriviaModel.fromJson(json.decode(response.body));
    } else {
      throw ServerException();
    }
  }
}
