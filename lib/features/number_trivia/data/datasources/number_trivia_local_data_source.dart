import 'dart:convert';

import '../../../../core/error/excpetions.dart';
import '../../domain/entities/number_trivia.dart';

import 'package:shared_preferences/shared_preferences.dart';

import '../models/number_trivia_model.dart';

abstract class NumberTriviaLocalDataSource {
  Future<NumberTriviaModel> getLastNumberTrivia();
  Future<void> cacheNumberTrivia(NumberTrivia numberTrivia);
}

class NumberTriviaLocalDataSourceImpl implements NumberTriviaLocalDataSource {
  final SharedPreferences cache;
  NumberTriviaLocalDataSourceImpl({required this.cache});

  @override
  Future<void> cacheNumberTrivia(NumberTrivia numberTrivia) async {
    await cache.setString('cached_number_trivia', json.encode(numberTrivia));
  }

  @override
  Future<NumberTriviaModel> getLastNumberTrivia() {
    final jsonString = cache.getString('cached_number_trivia');
    if (jsonString != null) {
      return Future.value(NumberTriviaModel.fromJson(json.decode(jsonString)));
    } else {
      throw CacheException();
    }
  }
}
