// ignore: import_of_legacy_library_into_null_safe
import 'package:mobx/mobx.dart';
import '../../domain/entities/responses/result.dart';
import '../../domain/usecases/interfaces/load_items_interface.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final ILoadItems _loadItems;

  @observable
  late ObservableList<Result> items = ObservableList<Result>();

  _HomeControllerBase(this._loadItems) {
    loadItems();
  }

  @action
  loadItems() {
    var result = _loadItems();

    result.fold((l) {}, (r) {
      items = r.asObservable();
    });
  }
}
