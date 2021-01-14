import 'package:modular_example/app/shared/entities/errors.dart';

abstract class FailureHome implements Failure {}

class LoadItemsError implements FailureHome {
  @override
  final String message;
  LoadItemsError({this.message = ''});
}
