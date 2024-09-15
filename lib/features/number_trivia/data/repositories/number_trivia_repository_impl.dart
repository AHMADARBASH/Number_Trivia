import 'package:dartz/dartz.dart';
import '../../../../core/platform/network_info.dart';
import '../datasources/number_trivia_local_data_source.dart';
import '../datasources/number_trivia_remote_data_source.dart';
import '../../../../core/error/failure.dart';
import '../../domain/entities/number_trivia.dart';
import '../../domain/repositories/number_trivia_repositoy.dart';

class NumberTriviaRepositoryImpl implements NumberTriviaRepositoy {
  final NumberTriviaLocalDataSource numberTriviaLocalDataSource;
  final NumberTriviaRemoteDataSource numberTriviaRemoteDataSource;
  final NetworkInfo networkInfo;

  NumberTriviaRepositoryImpl({
    required this.numberTriviaRemoteDataSource,
    required this.numberTriviaLocalDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, NumberTrivia>> getConcreteNumberTrivia(int number) {
    // TODO: implement getConcreteNumberTrivia
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, NumberTrivia>> getRandomNumberTrivia() {
    // TODO: implement getRandomNumberTrivia
    throw UnimplementedError();
  }
}
