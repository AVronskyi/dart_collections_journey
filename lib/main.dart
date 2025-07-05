import 'dart:math';

void main() {
  print('Dart Collections Journey');
  
  print('------------------- Task 1 -------------------');
  runTask1();
}

void runTask1() {
  final random = Random();
  final List<int> numbers = List.generate(100, (_) => random.nextInt(101));
  
  print('Список numbers: $numbers');
  print('65-й елемент: ${numbers[64]}');
  
  numbers.insert(49, 1000000000);
  print('Список після вставки 1000000000 на 50-ту позицію:');
  print(numbers);
  
  numbers.removeWhere((element) => element == 24 || element == 45 || element == 66 || element == 88);
  print('Список після видалення елементів 24, 45, 66, 88:');
  print(numbers);
  
  int sum = 0;
  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] % 3 == 0) {
      sum += numbers[i];
    }
  }
  print('Сума елементів, що діляться на 3 без залишку: $sum');
  
  final List<int> temp = [];
  for (int number in numbers) {
    if (number % 2 == 0) {
      temp.add(number);
    }
  }
  
  print('Довжина списку temp: ${temp.length}');
}
