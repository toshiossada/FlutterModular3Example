import 'package:dartz/dartz.dart';

import '../entities/responses/result.dart';
import '../entities/responses/errors.dart';
import 'interfaces/load_items_interface.dart';

class LoadItems extends ILoadItems {
  @override
  Either<LoadItemsError, List<Result>> call() {
    try {
      var result = List.generate(
        100,
        (index) => Result(
          description: 'Teste $index',
          id: index,
        ),
      );

      return Right(result);
    } catch (e) {
      return Left(LoadItemsError(message: 'Erro ao carregar items'));
    }
  }
}
