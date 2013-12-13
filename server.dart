
import 'dart:io';
 
main() {
  HttpServer.bind('127.0.0.1', 3000).then((server){
    server.listen((HttpRequest request){
      print(request.method);
      print(request.uri);
      request.response.write('Hello, this is dart:io in action!');
      request.response.close();
    });
  });
}
