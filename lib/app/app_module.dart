import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'app_widget.dart';
import 'modules/splash/splash_module.dart';
import 'modules/home/home_module.dart';
import 'shared/pages/not_found/not_found_page.dart';

class AppModule extends MainModule {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute('/', module: SplashModule()),
    ModuleRoute('/home', module: HomeModule()),
    WildcardRoute(child: (_, args) => NotFoundPage()),
  ];

  @override
  final Widget bootstrap = AppWidget();
}
