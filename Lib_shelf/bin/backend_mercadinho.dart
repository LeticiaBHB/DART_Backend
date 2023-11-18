
import 'package:shelf/shelf.dart';
import'package:shelf/shelf_io.dart' as shelf_io;
import 'package:shelf_router/shelf_router.dart';
void main(List<String> arguments) async{
  var app = Router();
  app.get('/',(Request){
    return Response(200, body: json, headers:{
      'content-type':'text/json',
    });
  });

  app.get('/html',(Request){
    return Response(200, body: html, headers:{
      'content-type':'text/html',
    });
  });


  final pipeline = Pipeline()
  .addMiddleware(logRequests())
  .addHandler(app);

  final server = await shelf_io.serve(pipeline, '0.0.0.0', 4140);
  print('server online: port ${server.port}');
}
    
Middleware addJsonTye(){
  return(handle){
    return(request) async{
      final Response = await handle(request);
      return handle(request);
    };
  };
}



final json = '''
{
  'message':'tudo certo aqui'
}

''';

final html = '''
<!DOCTYPE html>
<html>
<head>
<title>DART</title>
</head>
<body>

<h1>Este é um html em dart</h1>
<p>This is a dart</p>

</body>
</html>


''';