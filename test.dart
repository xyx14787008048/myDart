void core(){
  //使用‘'’、‘"’定义字符串，使用斜杠来转义那些与单引号冲突的字符串：\'
  var s1 = 'Single quotes work well for string literals.';
  var s2 = "Double quotes work just as well.";
  var s3 = 'It\'s easy to escape the string delimiter.';
  var s4 = "It's even easier to use the other delimiter.";


  //在字符串中，请以 ${表达式} 的形式使用表达式，如果表达式是一个标识符，可以省略掉 {}
  var s = 'string interpolation';
  assert('Dart has $s, which is very handy.' =='Dart has string interpolation, ''which is very handy.');
  assert('That deserves all caps. ''${s.toUpperCase()} is very handy!' =='That deserves all caps. ''STRING INTERPOLATION is very handy!');
}

void main(){
  core();
  var s = 'string interpolation';
  assert('Dart has $s, which is very handy.' =='Dart has string interpolation, ''which is very handy.');
  assert('That deserves all caps. ''${s.toUpperCase()} is very handy!' =='That deserves all caps. ''STRING INTERPOLATION is very handy!');
}