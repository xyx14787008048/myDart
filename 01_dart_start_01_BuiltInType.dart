import 'dart:core';


//Numbers
void Numbers()
{
var x = 1;
var hex = 0xDEADBEEF;

var y = 1.1;
var exponents = 1.42e5;

num x1 = 1; // x can have both int and double values
x1 += 2.5;

double z = 1; // Equivalent to double z = 1.0.

// String -> int
var one = int.parse('1');
assert(one == 1);

// String -> double
var onePointOne = double.parse('1.1');
assert(onePointOne == 1.1);

// int -> String
String oneAsString = 1.toString();
assert(oneAsString == '1');

// double -> String
String piAsString = 3.14159.toStringAsFixed(2);
assert(piAsString == '3.14');

assert((3 << 1) == 6); // 0011 << 1 == 0110
assert((3 | 4) == 7); // 0011 | 0100 == 0111
assert((3 & 4) == 0); // 0011 & 0100 == 0000

const msPerSecond = 1000;
const secondsUntilRetry = 5;
const msUntilRetry = secondsUntilRetry * msPerSecond;
}


//Strings
void Strings()
{
var s1 = 'Single quotes work well for string literals.';
var s2 = "Double quotes work just as well.";
var s3 = 'It\'s easy to escape the string delimiter.';
var s4 = "It's even easier to use the other delimiter.";

// 代码中文解释
// var s1 = '使用单引号创建字符串字面量。';
// var s2 = "双引号也可以用于创建字符串字面量。";
// var s3 = '使用单引号创建字符串时可以使用斜杠来转义那些与单引号冲突的字符串：\'。';
// var s4 = "而在双引号中则不需要使用转义与单引号冲突的字符串：'";

var s = 'string interpolation';

assert('Dart has $s, which is very handy.' ==
    'Dart has string interpolation, '
        'which is very handy.');
assert('That deserves all caps. '
        '${s.toUpperCase()} is very handy!' ==
    'That deserves all caps. '
        'STRING INTERPOLATION is very handy!');

// 代码中文解释
// var s = '字符串插值';
// assert('Dart 有$s，使用起来非常方便。' == 'Dart 有字符串插值，使用起来非常方便。');
// assert('使用${s.substring(3,5)}表达式也非常方便' == '使用插值表达式也非常方便。');

var s5 = 'String '
    'concatenation'
    " works even over line breaks.";
assert(s5 ==
    'String concatenation works even over '
        'line breaks.');

var s6 = 'The + operator ' + 'works, as well.';
assert(s6 == 'The + operator works, as well.');

// 代码中文解释
// var s1 = '可以拼接'
//     '字符串'
//     "即便它们不在同一行。";
// assert(s1 == '可以拼接字符串即便它们不在同一行。');

// var s2 = '使用加号 + 运算符' + '也可以达到相同的效果。';
// assert(s2 == '使用加号 + 运算符也可以达到相同的效果。');

var s7 = '''
You can create
multi-line strings like this one.
''';

var s8 = """This is also a
multi-line string.""";

// 代码中文解释
// var s1 = '''
// 你可以像这样创建多行字符串。
// ''';
// var s2 = """这也是一个多行字符串。""";

var s9 = r'In a raw string, not even \n gets special treatment.';
// 代码中文解释
//var s = r'在 raw 字符串中，转义字符串 \n 会直接输出 “\n” 而不是转义为换行。';

// These work in a const string.
const aConstNum = 0;
const aConstBool = true;
const aConstString = 'a constant string';

// These do NOT work in a const string.
var aNum = 0;
var aBool = true;
var aString = 'a string';
const aConstList = [1, 2, 3];

const validConstString = '$aConstNum $aConstBool $aConstString';
// const invalidConstString = '$aNum $aBool $aString $aConstList';
}


//Booleans
void Booleans()
{
// Check for an empty string.
var fullName = '';
assert(fullName.isEmpty);

// Check for zero.
var hitPoints = 0;
assert(hitPoints <= 0);

// Check for null.
var unicorn;
assert(unicorn == null);

// Check for NaN.
var iMeantToDoThis = 0 / 0;
assert(iMeantToDoThis.isNaN);
}


//Lists
void Lists()
{
var list = [1, 2, 3];

var list2 = [
  'Car',
  'Boat',
  'Plane',
];

var list3 = [1, 2, 3];
assert(list3.length == 3);
assert(list3[1] == 2);

list3[1] = 1;
assert(list3[1] == 1);

var constantList = const [1, 2, 3];
// constantList[1] = 1; // This line will cause an error.

var list4 = [1, 2, 3];
var list5 = [0, ...list];
assert(list5.length == 4);

var list6 = [0, ...?list4];
assert(list6.length == 1);

var listOfInts = [1, 2, 3];
var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
assert(listOfStrings[1] == '#1');
}

//Sets
void Sets()
{
var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};

var names = <String>{};
// Set<String> names = {}; // This works, too.
// var names = {}; // Creates a map, not a set.

var elements = <String>{};
elements.add('fluorine');
elements.addAll(halogens);

var elements2 = <String>{};
elements2.add('fluorine');
elements2.addAll(halogens);
assert(elements.length == 5);

final constantSet = const {
  'fluorine',
  'chlorine',
  'bromine',
  'iodine',
  'astatine',
};
// constantSet.add('helium'); // This line will cause an error.
}


//Maps
void Maps()
{
var gifts = {
  // Key:    Value
  'first': 'partridge',
  'second': 'turtledoves',
  'fifth': 'golden rings'
};

var nobleGases = {
  2: 'helium',
  10: 'neon',
  18: 'argon',
};

var gifts2 = Map<String, String>();
gifts2['first'] = 'partridge';
gifts2['second'] = 'turtledoves';
gifts2['fifth'] = 'golden rings';

var nobleGases2 = Map<int, String>();
nobleGases2[2] = 'helium';
nobleGases2[10] = 'neon';
nobleGases2[18] = 'argon';

var gifts3 = {'first': 'partridge'};
gifts3['fourth'] = 'calling birds'; // Add a key-value pair

var gifts4 = {'first': 'partridge'};
assert(gifts4['first'] == 'partridge');

var gifts5 = {'first': 'partridge'};
assert(gifts5['fifth'] == null);

var gifts6 = {'first': 'partridge'};
gifts6['fourth'] = 'calling birds';
assert(gifts6.length == 2);

final constantMap = const {
  2: 'helium',
  10: 'neon',
  18: 'argon',
};

// constantMap[2] = 'Helium'; // This line will cause an error.
}


//Runes
void Runes()
{
  var hi = 'Hi 🇩🇰';
  print(hi);
  print('The end of the string: ${hi.substring(hi.length - 1)}');
}


//Symbols
void Symbols()
{
 var s= "Morning";
 print(#s);
}

void main()
{
    Numbers();
    Strings();
    Booleans();
    Lists();
    Sets();
    Maps();
    Runes();
    Symbols();
}