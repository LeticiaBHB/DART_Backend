import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/route_manager.dart';
import 'package:hamburgflutter/modules/produto/produto_bindings.dart';

import 'modules/home/home_bindings.dart';
import 'modules/home/home_page.dart';
import 'modules/produto/produto_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: [
        GetPage(
          name: '/',
          binding: HomeBindings(),
          page:() => HomePage(),
        ),
        GetPage(
          name: '/produto',
          binding: ProdutoBindings(),
          page:() => ProdutoPage(),
        ),
      ],
    );
  }
}
