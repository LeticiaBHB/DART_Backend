import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

class ServeHandler {
  Handler get handler {
    final router = Router ();

    router.get('/', (Request request){
      return Response(200, body: 'Primeira Rota');
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
    return router;
  }
}