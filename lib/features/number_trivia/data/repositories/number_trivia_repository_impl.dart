import 'package:dartz/dartz.dart';

import '../../../../core/error/excpetions.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/network/network_info.dart';
import '../../domain/entities/number_trivia.dart';
import '../../domain/repositories/number_trivia_repositoy.dart';
import '../datasources/number_trivia_local_data_source.dart';
import '../datasources/number_trivia_remote_data_source.dart';
import '../models/number_trivia_model.dart';

class NumberTriviaRepositoryImpl implements NumberTriviaRepositoy {
  final NumberTriviaLocalDataSource localDataSource;
  final NumberTriviaRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  NumberTriviaRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });

  Future<Either<Failure, NumberTrivia>> getTrivia(
      Future<NumberTrivia> Function() triviaFunction) async {
    if (await networkInfo.isConntected) {
      try {
        final numberTrivia = await triviaFunction() as NumberTriviaModel;

        await localDataSource.cacheNumberTrivia(numberTrivia);
        return Right(numberTrivia);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final localTrivia = await localDataSource.getLastNumberTrivia();
        return Right(localTrivia);
      } on CacheException {
        return Left(CacheFailure());
      }
    }
  }

  @override
  Future<Either<Failure, NumberTrivia>> getConcreteNumberTrivia(
      int number) async {
    return await getTrivia(() async {
      return await remoteDataSource.getConcreteNumberTrivia(number);
    });
  }

  @override
  Future<Either<Failure, NumberTrivia>> getRandomNumberTrivia() async {
    return await getTrivia(() async {
      return await remoteDataSource.getRandomNumberTrivia();
    });
  }
}
