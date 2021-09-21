import 'dart:io';

void arithmetic() {
  int a = 100, b = 90;
  var c;
  c = a + b;
  print("$a + $b = $c");

  c = a - b;
  print("$a - $b = $c");

  c = a ~/ b; //this division returns integer type quotient
  print("$a ~/ $b = $c");

  c = a / b; //this division returns double type quotient
  print("$a / $b = $c");

  c = a * b;
  print("$a x $b = $c");

  c = a % b;
  print("$a % $b = $c");

  c = -(a + b);
  print("Reversing sign of a + b : $c");
}

void relational() {
  int a = 100, b = 90;
  var c;
  c = a < b;
  print("Is $a < $b  : $c");

  c = a > b;
  print("Is $a > $b  : $c");

  c = a <= b;
  print("Is $a <= $b : $c");

  c = a >= b;
  print("Is $a >= $b : $c");

  c = a == b;
  print("Is $a == $b : $c");

  c = a != b;
  print("Is $a != $b : $c");
}

void typetest() {
  var c = 10.0 is int;
  print("10.0 is int? : $c");
  c = 10 is int;
  print("10 is int? : $c");
}

void bitwise() {
  int a = 4, b = 5;
  print("Bitwise AND   : ${a & b}");
  print("Bitwise OR    : ${a | b}");
  print("Bitwise NOT   : a = ${~a}, b = ${~b}");
  print("Bitwise RIGHT : ${a << b}");
  print("Bitwise LEFT  : ${a >> b}");
}

void assignment() {
  int a = 10;
  print("a : ${a}");
  //var b ? ? = a * 2; // error : expected identifier
  //print(b);
}

void logical() {
  int a = 10, b = 20, d = 15;
  var c = a < b && b > d;
  print("Logical AND : $c");
  c = a < b || b < d;
  print("Logical AND : $c");
  c = !(a < b && b > d);
  print("Logical NOT : $c");
}

void conditional() {
  var c = 100 > 10 ? "True" : "False";
  print("Is 100 > 10 : $c");
  c = 100 < 10 ? "True" : "False";
  print("Is 100 < 10 : $c");

  var a;
  var d = a ?? "a is null";
  print(d);

  a = 10;
  d = a ?? "a is null";
  print(d);
}

void main() {
  print("Enter a choice : ");
  int? opt =
      int.parse(stdin.readLineSync()!); // here ? and ! are for null safety
  switch (opt) {
    case 1:
      arithmetic();
      break;
    case 2:
      relational();
      break;
    case 3:
      typetest();
      break;
    case 4:
      bitwise();
      break;
    case 5:
      assignment();
      break;
    case 6:
      logical();
      break;
    case 7:
      conditional();
      break;
    default:
      print("Wrong Choice.. Try again");
      break;
  }
}
