import 'dart:math';
//singleton vai registrar o cara e vai dar a mesma instancia toda vez que eu pedir
class RandomSingletonModel {
  int id;
  String name;

  RandomSingletonModel ()
      : id = Random().nextInt(1000), // o id não pode mudar no singletonmodel, toda vez que eu pedir ele tem que ser o mesmo
      name = 'RandomSingletonModel'{
    print('$name: id: $id');
  }
}