var _nobleGases = {6:"Harry Maguire",9: "Harry Kane", 17: "Bukayo Saka", 10: "Sterling",7:"Grealish",11:"Rashford"};

bool isNoble(int atomicNumber) {
  return _nobleGases[atomicNumber] != null;
}

isNoble2(atomicNumber) {
  return _nobleGases[atomicNumber] != null;
}

bool isNoble3(int atomicNumber) => _nobleGases[atomicNumber] != null;



//参数
void Parameter() {
  void enableFlags({bool? bold, bool? hidden}) {
    ;
  }

enableFlags(bold: true, hidden: false);


//可选的位置参数
String say(String from, String msg, [String? device]) {
  var result = '$from says $msg';
  if (device != null) {
    result = '$result with a $device';
  }
  return result;
}

assert(say('Bob', 'Howdy') == 'Bob says Howdy');

assert(say('Bob', 'Howdy', 'smoke signal') ==
    'Bob says Howdy with a smoke signal');

//默认参数值
// /// Sets the [bold] and [hidden] flags ...
// void enableFlags({bool bold = false, bool hidden = false}) {...}

// bold will be true; hidden will be false.
enableFlags(bold: true);

String say2(String from, String msg, [String device = 'carrier pigeon']) {
  var result = '$from says $msg with a $device';
  return result;
}

assert(say2('Bob', 'Howdy') == 'Bob says Howdy with a carrier pigeon');

void doStuff(
    {List<int> list = const [1, 2, 3],
    Map<String, String> gifts = const {
      'first': 'paper',
      'second': 'cotton',
      'third': 'leather'
    }}) {
  print('list:  $list');
  print('gifts: $gifts');
}
}

//main() 函数
void My_main(List<String> arguments) {
  print(arguments);

  assert(arguments.length == 2);
  assert(int.parse(arguments[0]) == 1);
  assert(arguments[1] == 'test');
}

//函数是一级对象
void FirstObjects()
{
void printElement(int element) {
  print(element);
}

var list = [1, 2, 3];

// Pass printElement as a parameter.
list.forEach(printElement);

var loudify = (msg) => '!!! ${msg.toUpperCase()} !!!';
assert(loudify('hello') == '!!! HELLO !!!');
}


//匿名函数
void AnonymousFunction()
{
const list = ['apples', 'bananas', 'oranges'];
list.map((item) {
  return item.toUpperCase();
}).forEach((item) {
  print('$item: ${item.length}');
});
}


//词法作用域
void LexicalScope()
{
bool topLevel = true;

void main() {
  var insideMain = true;

  void myFunction() {
    var insideFunction = true;

    void nestedFunction() {
      var insideNestedFunction = true;

      assert(topLevel);
      assert(insideMain);
      assert(insideFunction);
      assert(insideNestedFunction);
    }
  }
}
}


//词法闭包
void LexicalClosure()
{


/// Returns a function that adds [addBy] to the
/// function's argument.
Function makeAdder(int addBy) {
  return (int i) => addBy + i;
}

void go() {
  // Create a function that adds 2.
  var add2 = makeAdder(2);

  // Create a function that adds 4.
  var add4 = makeAdder(4);

  assert(add2(3) == 5);
  assert(add4(3) == 7);
}
go();
}


//测试函数是否相等
void foo() {} // A top-level function

class A {
  static void bar() {} // A static method
  void baz() {} // An instance method
}

void Equality() {
  Function x;

  // Comparing top-level functions.
  x = foo;
  assert(foo == x);

  // Comparing static methods.
  x = A.bar;
  assert(A.bar == x);

  // Comparing instance methods.
  var v = A(); // Instance #1 of A
  var w = A(); // Instance #2 of A
  var y = w;
  x = w.baz;

  // These closures refer to the same instance (#2),
  // so they're equal.
  assert(y.baz == x);

  // These closures refer to different instances,
  // so they're unequal.
  assert(v.baz != w.baz);
}


//返回值
void ReturnValue()
{
foo() {}

assert(foo() == null);
}


void main(List<String> arguments) 
{
  print(isNoble(6));
  print(isNoble(7));
  print(isNoble(8));
  print(isNoble(9));
  print(isNoble(10));
  print(isNoble(11));
  print(isNoble(14));
  Parameter();

  print(arguments);

  assert(arguments.length == 2);
  assert(int.parse(arguments[0]) == 1);
  assert(arguments[1] == 'test');
    FirstObjects();
    AnonymousFunction();
    LexicalScope();
    LexicalClosure();
    Equality();
}