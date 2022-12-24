//变量
void variable()
{
var name = 'Bob';
Object name1 = 'Bob';
String name2 = 'Bob';
}

//默认值
void Default()
{
int? lineCount;
assert(lineCount == null);
print(lineCount);
int lineCount1=0;
print(lineCount1);
}

//Late variables
late String description;
void LateVariables()
{
  description = 'Feijoada!';
  print(description);
}

//Final 和 Const
void FinalAndConst()
{
final name = 'Bob'; // Without a type annotation
final String nickname = 'Bobby';

const bar = 1000000; // Unit of pressure (dynes/cm2)
const double atm = 1.01325 * bar; // Standard atmosphere

var foo = const [];
const baz = []; // Equivalent to `const []`

foo = [1, 2, 3]; // Was const []
}

void main()
{
    variable();
    Default();
    FinalAndConst();
}