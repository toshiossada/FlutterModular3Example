import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'home_controller.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Items'),
      ),
      body: Observer(
        builder: (_) {
          return ListView.builder(
              itemCount: store.items.length,
              itemBuilder: (_, index) {
                return ListTile(
                  leading: Text('#${store.items[index].id}'),
                  title: Text(store.items[index].description),
                  onTap: () {
                    Modular.to.pushNamed(
                      'details',
                      arguments: store.items[index],
                      forRoot: true,
                    );
                  },
                );
              });
        },
      ),
    );
  }
}
