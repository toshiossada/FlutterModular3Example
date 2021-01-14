import 'package:flutter_modular/flutter_modular.dart';

import 'presenter/splash_page.dart';

class SplashModule extends ChildModule {
  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => SplashPage()),
  ];
}
