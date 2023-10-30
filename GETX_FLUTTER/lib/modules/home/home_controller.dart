import 'package:get/get.dart';

import '../../repository/produto_repository.dart';
//ciclo de vida
class HomeController extends GetxController{
  //vai ser invocada quando a tela for iniciada
  final produtos = RxList<String> ([]); // atributo reativo, a tela será atualizada quando atualizar
        //também posso fazer assim final produtos = <String>[].obs; -> automaticamente vai criar para mim o RvList
  final _produtoRepository = Get.find<ProdutoRepository>();

@override
  void onInit(){
  print('onInit');

  //escutando as alterações, posso usar classes utilitarias, ever é uma delas:
  ever(produtos,(produtosEstado){
    print('produto foi lterado $produtosEstado');
  });
  super.onInit();
}

//vai ser invocada quando a tela for finalizada / terminar de ser construida
@override
  void onReady(){
  print('onReady');
  final produtosData = _produtoRepository.recuperarProdutos();
    //produtos.value = produtosData; -> poderia fazer assim, mas o getx trubina isso
  produtos.assignAll(produtosData); // o assignAll vai sobrescrever toda a lista que está lá
  super.onReady();
}

  void adicionarProduto() {
  produtos.add('Geladeira');
  }
}