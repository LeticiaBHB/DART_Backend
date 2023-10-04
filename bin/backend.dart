import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;
import 'server_handler.dart';

void main() async{

  var _server = ServerHandler();
  final server = await shelf_io.serve(_server.handler, 'localhost', 8080);

  print('Nosso servidor foi iniciado! http://localhost:8080');
}
