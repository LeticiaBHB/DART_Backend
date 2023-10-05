import 'dart:convert';

import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

class ServeHandler {
  Handler get handler {
    final router = Router ();

    router.get('/', (Request request){
      return Response(
        200, 
        body: '<h1>Primeira Rota</h1>',
        headers: {'content-type' : 'text/html'},
        );
    });

    //http://localhost:8080/ola/mundo
      //ola mundo
    router.get('/ola/mundo<usuario>',(Request req, String usuario){
      return Response.ok('ola mundo $usuario');
    });

    //http://localhost:8080/query?nome=Leticia
    router.get('/query', (Request req){
      String? nome = req.url.queryParameters['nome'];
          //http://localhost:8080/query?nome=Leticia&idade=26
      String? idade = req.url.queryParameters['idade'];
      return Response.ok('Query é: $nome, idade $idade');
    });

//usamos o post sempre que queremos enviar informações para o servidor sem que elas sejam trafegadas atraves do get publicamente, é um pouco mais seguro que o get
    router.post('/login',(Request req) async{
      var result = await req.readAsString();
      Map json = jsonDecode(result);

      var usuario = json['usuario'];
      var senha = json['senha'];

      //se usuario == admin e senha == 123
      if (usuario == 'admin' && senha == '123'){
        //return Response.ok(json['chave']);
        Map result = {'token':'token123', 'user_id': 1};
        String jsonResponse = jsonEncode(result);
        return Response.ok(
          jsonResponse,
          headers: {'content-type' : 'application/json'});
      }else{
        return Response.forbidden('acesso negado');
      }//se não
    });
    return router;
  }
}
