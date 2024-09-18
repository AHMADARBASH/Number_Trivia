import 'package:dartz/dartz.dart';

import '../error/failure.dart';

class InputConverter {
  Either<Failure, int> stringtoUnsignedInt(String str) {
    try {
      final integer = int.parse(str);
      if (integer < 0) {
        throw const FormatException();
      } else {
        return Right(integer);
      }
    } on FormatException {
      return Left(InvalidInputFailure());
    }
  }
}
