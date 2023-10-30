import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

//class HomePage extends StatelessWidget {
//final controller = Get.find<HomeController>();
//POSSO UTILIZAR DIRETO O GET VIEW
class HomePage extends GetView<HomeController> {
  final controller = Get.find<HomeController>();

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('home page'),
      ),
      //se eu quiser adicionar produtos eu uso essefloatingactionbutton
      floatingActionButton: FloatingActionButton(onPressed: controller.adicionarProduto),
      body: Obx(() { // ele fica escutando as alterações, quando um metodo da obx é alterado, altomaticamnete ele reestarta essa estrutura aqui
        return ListView.builder(
          itemCount: controller.produtos.length,
          itemBuilder: (context, index) {
            final produto = controller.produtos[index];
            return ListTile(
              onTap: (){
                Get.toNamed('/produto', arguments: produto);
              },
              title: Text(produto),
            );
          },
        );
      }),
    );
  }
}
