import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture_sample/core/error/failures.dart';

class InputConverter {
  Either<Failure, int> stringToUnsignedInteger(String input) {
    final result = int.tryParse(input);
    if (result != null && result > 0) {
      return Right(result);
    } else {
      return Left(InvalidInputFailure());
    }
  }
}

class InvalidInputFailure extends Failure {}
