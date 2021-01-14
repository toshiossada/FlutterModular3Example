import 'package:dartz/dartz.dart';
import '../../entities/responses/errors.dart';
import '../../entities/responses/result.dart';

abstract class ILoadItems {
  Either<LoadItemsError, List<Result>> call();
}
