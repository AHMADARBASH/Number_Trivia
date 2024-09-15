import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';
import '../entities/number_trivia.dart';
import '../repositories/number_trivia_repositoy.dart';

class GetRandomNumberTrivia {
  final NumberTriviaRepositoy repositoy;
  GetRandomNumberTrivia({required this.repositoy});

  Future<Either<Failure, NumberTrivia>> call() async {
    return await repositoy.getRandomNumberTrivia();
  }
}
