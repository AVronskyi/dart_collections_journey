import 'dart:math';
import 'names.dart';
import 'package:word_generator/word_generator.dart';

void main() {
  print('Dart Collections Journey');
  
  print('------------------- Task 1 -------------------');
  runTask1();
  
  print('\n------------------- Task 2 -------------------');
  runTask2();
  
  print('\n------------------- Task 3 -------------------');
  runTask3();
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

void runTask2() {
  final Set<String> uniqueNames1 = ukrainianNames1.toSet();
  print('Кількість унікальних імен у першому списку: ${uniqueNames1.length}');
  
  final Set<String> uniqueNames2 = ukrainianNames2.toSet();
  print('Кількість унікальних імен у другому списку: ${uniqueNames2.length}');
  
  final Set<String> commonNames = uniqueNames1.intersection(uniqueNames2);
  print('Кількість спільних імен: ${commonNames.length}');
  print('Спільні імена: $commonNames');
  
  final Set<String> uniqueToFirst = uniqueNames1.difference(uniqueNames2);
  print('Імена, що є тільки в першому списку (${uniqueToFirst.length}):');
  print(uniqueToFirst);
  
  final Set<String> uniqueToSecond = uniqueNames2.difference(uniqueNames1);
  print('Імена, що є тільки в другому списку (${uniqueToSecond.length}):');
  print(uniqueToSecond);
}

void runTask3() {
  final wordGenerator = WordGenerator();
  final List<String> nounsList = wordGenerator.randomNouns(50);  
  final Map<String, int> nounsMap = {};
  for (String noun in nounsList) {
    nounsMap[noun] = noun.length;
  }

  final Map<String, int> tempNouns = {};
  
  nounsMap.forEach((key, value) {
    if (value % 2 == 0) {
      tempNouns[key] = value;
    }
  });
  
  print('\nКлючі зі словника tempNouns:');
  print(tempNouns.keys.toList());
}
