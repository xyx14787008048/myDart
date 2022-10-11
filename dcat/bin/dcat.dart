// import 'package:dcat/dcat.dart' as dcat;

// void main(List<String> arguments) {
//   print('Hello world: ${dcat.calculate()}!');
// }



import 'dart:convert';
import 'dart:io';

import 'package:args/args.dart';

const lineNumber='line-number';

void main(List<String> arguments) {
  exitCode = 0;//假定成功
  final parser = ArgParser()..addFlag(lineNumber,negatable: false,abbr: 'n');

  ArgResults argResults = parser.parse(arguments);
  final paths =argResults.rest;

  dcat(paths,showLineNumbers: argResults[lineNumber] as bool);
}


Future<void> dcat(List<String> paths, {bool showLineNumbers =false}) async {
  if (paths.isEmpty) {
    //没有文件作为参数提供。从 stdin 读取并打印每行。
    await stdin.pipe(stdout);
  } else {
    for (final path in paths) {
      var lineNumber = 1;
      final lines =utf8.decoder.bind(File(path).openRead()).transform(const LineSplitter());
      try {
        await for (final line in lines){
          if (showLineNumbers){
            stdout.write('${lineNumber++}');
          }
          stdout.writeln(line);
        }
      }catch (_) {
        await _handlError(path);
      }
    }
  }
}

Future<void> _handlError(String path) async{
  if (await FileSystemEntity.isDirectorySync(path)) {
    stderr.writeln('error: $path is a directory');
  }else {
    exitCode = 2;
  }
}