import 'dart:io';
import 'dart:convert';

//Reading a file as text
void Fun1() async {
  var config = File('config.txt');

  // Put the whole file in a single string.
  var stringContents = await config.readAsString();
  print('The file is ${stringContents.length} characters long.');

  // Put each line of the file into its own string.
  var lines = await config.readAsLines();
  print('The file is ${lines.length} lines long.');
}

//Reading a file as binary
void Fun2() async {
  var config = File('config.txt');

  var contents = await config.readAsBytes();
  print('The file is ${contents.length} bytes long.');
}

//Handling errors
void Fun3() async {
  var config = File('config.txt');
  try {
    var contents = await config.readAsString();
    print(contents);
  } catch (e) {
    print(e);
  }
}

//Streaming file contents
void Fun4() async {
  var config = File('config.txt');
  Stream<List<int>> inputStream = config.openRead();

  var lines = utf8.decoder.bind(inputStream).transform(const LineSplitter());
  try {
    await for (final line in lines) {
      print('Got ${line.length} characters from stream');
    }
    print('file is now closed');
  } catch (e) {
    print(e);
  }
}

//Writing file contents
void Fun5() async{
  var logFile = File('log.txt');
  var sink = logFile.openWrite();
  sink.write('FILE ACCESSED ${DateTime.now()}\n');
  await sink.flush();
  await sink.close();

  var sink1 = logFile.openWrite(mode: FileMode.append);
}

//Listing files in a directory
void Fun6() async {
  var dir = Directory('tmp');

  try {
    var dirList = dir.list();
    await for (final FileSystemEntity f in dirList) {
      if (f is File) {
        print('Found file ${f.path}');
      } else if (f is Directory) {
        print('Found dir ${f.path}');
      }
    }
  } catch (e) {
    print(e.toString());
  }
}

//Files and directories
void FilesAndDirectories()
{
Fun1();
Fun2();
Fun3();
Fun4();
Fun5();
Fun6();
}


//HTTP server
void Fun7() async {
  final requests = await HttpServer.bind('localhost', 8888);
  await for (final request in requests) {
    processRequest(request);
  }
}

void processRequest(HttpRequest request) {
  print('Got request for ${request.uri.path}');
  final response = request.response;
  if (request.uri.path == '/dart') {
    response
      ..headers.contentType = ContentType(
        'text',
        'plain',
      )
      ..write('Hello from the server');
  } else {
    response.statusCode = HttpStatus.notFound;
  }
  response.close();
}

//HTTP client
void Fun8() async {
  var url = Uri.parse('http://localhost:8888/dart');
  var httpClient = HttpClient();
  var request = await httpClient.getUrl(url);
  var response = await request.close();
  var data = await utf8.decoder.bind(response).toList();
  print('Response ${response.statusCode}: $data');
  httpClient.close();
}

//HTTP clients and servers
void HTTPClientsAndServers()
{
    Fun7();
    Fun8();
}

void main()
{
    FilesAndDirectories();
    HTTPClientsAndServers();
}