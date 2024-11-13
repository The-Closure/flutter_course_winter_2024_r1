// ignore_for_file: public_member_api_docs, sort_constructors_first

void main() async {
  // int id = await myId();
  // print(id);
  // print(time());
  Homane ahmad = Homane(name: 'ahmad', purthDate: DateTime(2000, 12, 5));
  print(ahmad.name);
  print(ahmad.purthDate.month);
  ahmad.howAmI();

  Employe mhd = Employe(jobe: 'En', name: "mhd", purthDate: DateTime(1999));
  print(mhd.jobe);
  mhd.howAmI();

  Homane mosab = Employe(jobe: "en ", name: "mosab", purthDate: DateTime(1999));
  print(mosab.purthDate);
  print((mosab as Employe).jobe);
  mosab.howAmI();

  // Employe mhd2 = Homane(name: name, purthDate: purthDate);

  if (2 == 5) {}

  // Animal animal = Animal(id: 5);
  Cat kity = Cat(id: 8, tybe: "sheraze", colore: "white");
  Cat kity2 = Cat(id: 8, tybe: "sheraze", colore: "white");

  if (kity == kity2) {
    print(true);
  } else {
    print(false);
  }

  Dog spike = Dog(id: 2);

  howItis(animal: kity);
  howItis(animal: spike);

  Person ahmad2 = Person();
  ahmad2.doSomeThing();
  // Thing h = Thing();

  Company().setName(name: "co");
  Company co = Company();
  co.setName(name: 'co1');
  co.setLocation(location: "damascus");
  print(co.getLocation());
  print(co.getName());

  // Person mhd2 = Person();
  // Person p1 = getPerson();
  // Person p2 = getPerson();

  // try {
  //   if (p1 == p2) {
  //     print(true);
  //   }
  // } catch (e) {
  //   print('there is somethine wrong');
  //   print(e);
  // }

  print(BankAcount.getMyAcount());
  BankAcount myAcount = BankAcount.myBankAcountInstans;
  BankAcount ahmadAcount = BankAcount.myBankAcountInstans;

  equal(firstAcount: myAcount, secondAcount: ahmadAcount);
}

Person getPerson() {
  Person person = Person();
  return person;
}

void howItis({required Animal animal}) {
  if (animal is Cat) {
    print("it is cat");
  } else if (animal is Dog) {
    print("it is dog");
  }
}

void equal(
    {required BankAcount firstAcount, required BankAcount secondAcount}) {
  if (firstAcount == secondAcount) {
    print('-------> is equal');
  } else {
    print('is not equal');
  }
}

class Homane {
  String name;
  DateTime purthDate;
  Homane({
    required this.name,
    required this.purthDate,
  });
  void howAmI() {
    print("I am homan");
  }
}

class Employe extends Homane {
  String jobe;
  Employe({required this.jobe, required super.name, required super.purthDate});
  @override
  void howAmI() {
    print("i am enginering");
  }
}

Future<int> myId() async {
  await Future.delayed(Duration(seconds: 2));
  return 10;
}

// Stream<int> time() async* {
//   int conter = 0;
//   for (var i = 0; i > 20; i++) {
//     conter++;
//     yield conter;
//   }
//}

mixin class Thing {
  void doSomeThing() {
    print('nothing');
  }
}

abstract class Creation {
  late String name;
  void eat();
  void toke();
}

class Person with Thing implements Creation, Animal {
  // @override
  // void doSomeThing() {
  //   print('woke');
  // }

  @override
  void eat() {}

  @override
  void toke() {
    print("arabic");
  }

  @override
  late String name;

  @override
  late int id;

  @override
  void sond() {
    // TODO: implement sond
  }
}

abstract class Animal {
  int id;
  Animal({
    required this.id,
  });
  void sond() {}
}

class Cat extends Animal {
  String tybe;
  String colore;
  Cat({
    required super.id,
    required this.tybe,
    required this.colore,
  });
  @override
  void sond() {
    print('cat sead meo meo');
  }
}

class Dog extends Animal {
  Dog({required super.id});

  @override
  void sond() {
    print("dog sead hwo hwo");
  }
}

class BankAcount {
  String password;
  double mony;

  BankAcount._({
    required this.password,
    required this.mony,
  });

  static BankAcount myBankAcountInstans =
      BankAcount._(password: 'password123', mony: 12000.500);

  static getMyAcount() {
    return myBankAcountInstans.mony;
  }
}

class Company {
  late String _name;
  late String _location;

  void setName({required String name}) {
    _name = name;
  }

  void set(name) {
    _name = name;
  }

  String get() {
    return _name;
  }

  String getName() {
    return _name;
  }

  void setLocation({required location}) {
    _location = location;
  }

  String getLocation() {
    return _location;
  }
}
