import 'dart:math';
// lazy singleton é uma inicilização preguiçosa
class RandomLazySingletonModel {
  int id;
  String name;

  RandomLazySingletonModel ()
      : id = Random().nextInt(1000), // o id não muda também
      name = 'RandomLazySingletonModel'{
    print('$name: id: $id');
  }
}