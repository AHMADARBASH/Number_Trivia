import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entities/number_trivia.dart';
import '../repositories/number_trivia_repositoy.dart';

class GetConcreteNumberTrivia {
  final NumberTriviaRepositoy repositoy;
  GetConcreteNumberTrivia({required this.repositoy});

  Future<Either<Failure, NumberTrivia>> call({required int number}) async {
    return await repositoy.getConcreteNumberTrivia(number);
  }
}
