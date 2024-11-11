void main() {
  addTwoNumbersWithVoidAndPosionalParams(10, 20);
  double result = addTwoNumbersWithReturnTypeAndRequiredNamedParams(
      firstNumber: 10, secondNumber: 50);
  addTwoNumbersWithReturnTypeAndRequiredNamedParams(
      secondNumber: 10, firstNumber: 50);

  print(result);

  int multiResult = multiplyeThreeNumbersWithRequiredAndOptionalNamedParams(
    firstNumber: 10,
    secondNumber: 10,
    // thirdNumber: 10,
  );
  print(multiResult);
  int multiResult2 = multiplyeThreeNumbersWithPostionalAndOptionalUnamedParams(
    10,
    20,
    // 10,
  );
  print(multiResult2);

  Human mohammad = Human(name: 'Mohammad', color: 'White', birthDate: '1998');
  print(mohammad.name);
  print(mohammad.birthDate);

  mohammad.talk();
  mohammad.walk();

  Human tareq = Human(name: 'Tareq', color: 'White', birthDate: '2000');
  print(tareq.name);
  print(tareq.birthDate);

  tareq.talk();
  tareq.walk();
}

void addTwoNumbersWithVoidAndPosionalParams(int firstNumber, int secondNumber) {
  int sum = firstNumber + secondNumber;
  print(sum);
}

double addTwoNumbersWithReturnTypeAndRequiredNamedParams(
    {required int firstNumber, required int secondNumber}) {
  // double sum = (firstNumber + secondNumber) as double;
  double sum = (firstNumber + secondNumber).toDouble();
  // return double.parse("$sum");
  return sum;
  // return firstNumber + secondNumber;
}

int multiplyeThreeNumbersWithRequiredAndOptionalNamedParams(
    {required int firstNumber,
    required int secondNumber,
    int thirdNumber = 1}) {
  int result = firstNumber * secondNumber * thirdNumber;
  return result;
}

int multiplyeThreeNumbersWithPostionalAndOptionalUnamedParams(
    int firstNumber, int secondNumber,
    [int thirdNumber = 1]) {
  int result = firstNumber * secondNumber * thirdNumber;
  return result;
}

class Human {
  String name;
  String color;
  String birthDate;

  Human({required this.name, required this.color, required this.birthDate});

  void talk() {
    print('Human is Talking');
  }

  void walk() {
    print('Human is walking');
  }
}
