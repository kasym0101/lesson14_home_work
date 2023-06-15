import 'dart:io';
import 'dart:math';

void main() {
  // task1();
  // task2();
  // task3(2, 3);
  // print(task4(5));
  print(fib(7));
}

void task1() {
  int a = Random().nextInt(10);
  int b = Random().nextInt(10);
  int result = a + b;
  print('Решите пример $a + $b = ???');
  int answer = int.parse(stdin.readLineSync()!);

  if (answer == result) {
    print('Правильно!');
  } else {
    print('Попробуйте еще раз');
    task1();
  }
}

void task2() {
  int a = Random().nextInt(6) + 1;
  print(a);
  print('1 - Бросить еще раз\t2 - Закончить игру');

  int answer = int.parse(stdin.readLineSync()!);

  if (answer == 1) {
    task2();
  } else if (answer == 2) {
    print('Wasted');
  } else {
    print('Error');
    task2();
  }
}

void task3(num a, num b) {
  num result = pow(a, b);
  print(result);
}

int task4(int n) {
  if (n == 1) {
    return 1;
  } else {
    return n + task4(n - 1);
  }
}

fib(int n) {
  if (n < 2) {
    return n;
  } else {
    return fib(n - 1) + fib(n - 2);
  }
}
