import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_example/app/modules/home/presenter/start/start_page.dart';

import 'domain/usecases/load_items.dart';
import 'presenter/details/details_page.dart';
import 'presenter/home/home_page.dart';
import 'presenter/home/home_controller.dart';
import 'presenter/start/start_controller.dart';

class HomeModule extends ChildModule {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => LoadItems()),
    Bind.lazySingleton((i) => HomeController(i())),
    Bind.lazySingleton((i) => StartController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => StartPage(), children: [
      ChildRoute('/list', child: (_, args) => HomePage()),
      ChildRoute('/details',
          child: (_, args) => DetailsPage(
                result: args!.data,
              ),
          guards: [HomeGuard()]),
      ChildRoute(
        '/config',
        child: (_, args) => Container(color: Colors.blue),
        transition: TransitionType.noTransition,
      ),
      ChildRoute(
        '/perfil',
        child: (_, args) => Container(color: Colors.green),
        transition: TransitionType.noTransition,
      ),
    ]),
  ];
}

class HomeGuard extends RouteGuard {
  @override
  Future<bool> canActivate(String path, ModularRoute router) async {
    // if (router.args?.data == null) {
    //   return false;
    // } else {
    return true;
    //}
  }
}
