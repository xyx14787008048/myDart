import 'dart:async';

//Future
void future()
{

Future<void> runUsingAsyncAwait() async {
  // ...
  var entryPoint = await findEntryPoint();
  var exitCode = await runExecutable(entryPoint, args);
  await flushThenExit(exitCode);
}

// var entryPoint = await findEntryPoint();
// try {
//   var exitCode = await runExecutable(entryPoint, args);
//   await flushThenExit(exitCode);
// } catch (e) {
//   // Handle the error...
// }

// HttpRequest.getString(url).then((String result) {
//   print(result);
// });

// HttpRequest.getString(url).then((String result) {
//   print(result);
// }).catchError((e) {
//   // Handle or ignore the error.
// });

// Future result = costlyQuery(url);
// result
//     .then((value) => expensiveWork(value))
//     .then((_) => lengthyComputation())
//     .then((_) => print('Done!'))
//     .catchError((exception) {
//   /* Handle exception... */
// });

try {
  final value = await costlyQuery(url);
  await expensiveWork(value);
  await lengthyComputation();
  print('Done!');
} catch (e) {
  /* Handle exception... */
}

Future<void> deleteLotsOfFiles() async =>  ...
Future<void> copyLotsOfFiles() async =>  ...
Future<void> checksumLotsOfOtherFiles() async =>  ...

await Future.wait([
  deleteLotsOfFiles(),
  copyLotsOfFiles(),
  checksumLotsOfOtherFiles(),
]);
print('Done with all the long steps!');
}

//Stream
void Stream()
{
    void stream(List<String> arguments) async {
  // ...
  if (await FileSystemEntity.isDirectory(searchPath)) {
    final startingDir = Directory(searchPath);
    await for (final entity in startingDir.list()) {
      if (entity is File) {
        searchFile(entity, searchTerms);
      }
    }
  } else {
    searchFile(File(searchPath), searchTerms);
  }
}
stream();

// Add an event handler to a button.
submitButton.onClick.listen((e) {
  // When the button is clicked, it runs this code.
  submitData();
});

var lines = inputStream.transform(utf8.decoder).transform(const LineSplitter());

var config = File('config.txt');
Stream<List<int>> inputStream = config.openRead();

inputStream.transform(utf8.decoder).transform(const LineSplitter()).listen(
    (String line) {
  print('Got ${line.length} characters from stream');
}, onDone: () {
  print('file is now closed');
}, onError: (e) {
  print(e);
});
}