import 'dart:math';

//三角函数
void TrigonometricFunction()
{
// Cosine
assert(cos(pi) == -1.0);

// Sine
var degrees = 30;
var radians = degrees * (pi / 180);
// radians is now 0.52359.
var sinOf30degrees = sin(radians);
// sin 30° = 0.5
assert((sinOf30degrees - 0.5).abs() < 0.01);
}

//最大值和最小值
void MaximumAndMinimum()
{
assert(max(1, 1000) == 1000);
assert(min(1, -1000) == -1000);
}

//数学常数
void MathematicalConstant()
{
// See the Math library for additional constants.
print(e); // 2.718281828459045
print(pi); // 3.141592653589793
print(sqrt2); // 1.4142135623730951
}

//随机数
void RandomNumbers()
{
var random = Random();
random.nextDouble(); // Between 0.0 and 1.0: [0, 1)
random.nextInt(10); // Between 0 and 9.

var random1 = Random();
random1.nextBool(); // true or false
}

void main()
{
 TrigonometricFunction();
 MaximumAndMinimum();
 MathematicalConstant();
 RandomNumbers();
}