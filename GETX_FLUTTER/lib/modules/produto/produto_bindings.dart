import 'package:get/get.dart';
import 'package:hamburgflutter/modules/produto/produto_controller.dart';

class ProdutoBindings implements Bindings {
  @override
  void dependencies (){
    Get.put(ProdutoController());
  }
}