// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_modular/flutter_modular.dart';

class StartController {
  var index = 0;

  changeTab(index) {
    this.index = index;
    switch (index) {
      case 0:
        Modular.to.navigate('/home/list');
        break;
      case 1:
        Modular.to.navigate('/home/config');
        break;
      case 2:
        Modular.to.navigate('/home/perfil');
        break;
    }
  }
}
