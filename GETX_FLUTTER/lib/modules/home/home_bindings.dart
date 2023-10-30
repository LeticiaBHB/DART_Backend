import 'package:get/get_instance/get_instance.dart';
import 'package:get/route_manager.dart';
import 'package:hamburgflutter/repository/produto_repository.dart';

import 'home_controller.dart';

class HomeBindings implements Bindings {
  @override
  void dependencies (){
    Get.put(ProdutoRepository());
    Get.put(HomeController());
  }
}