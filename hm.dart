void main () {
List<int> a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
taskFour(a);
}

taskOne(List <int> a) {
  a.sort();
  print("Наибольший элемент массива = ${a.last} и его индекс равен ${a.length - 1}");
}

bool taskTwo(List <int> a) {
Set<int> uniqueSet = Set<int>();

for (int number in a) {
  if (uniqueSet.contains(number)) {
    return false;
  }

  uniqueSet.add(number);
}

return true;
}

taskThree(List<int> a) {
  List<int> evenNums = [];
  int sum = 0; 

  for (int i = 0; i < a.length; i++) {
    if (a[i] % 2 == 0) {
      evenNums.add(a[i]);
    }
  }

  for (int j = 0; j < evenNums.length; j++) {
    sum += evenNums[j];
  }

  print(sum);
}

taskFour(List<int> a) {
  int n = a.length;

   for (int i = 0; i < n - 1; i++) {
    for (int j = 0; j < n - i - 1; j++) {
      if (a[j] > a[j + 1]) {
        int temp = a[j];
        a[j] = a[j + 1];
        a[j + 1] = temp;
      }
    }
  }

  print(a);
}

taskFive(List<int> a) {
  List<int> evenNums = [];

  for (int i = 0; i < a.length; i++) {
    if (a[i] % 2 == 0) {
      evenNums.add(a[i]);
    }
  }

  evenNums.sort();

  print(evenNums.last);
}