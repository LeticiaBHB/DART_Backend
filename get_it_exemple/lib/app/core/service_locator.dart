import 'package:get_it/get_it.dart';
import 'package:get_it_injectable_exemple/app/models/random_factory_model.dart';
import 'package:get_it_injectable_exemple/app/models/random_singleton_model.dart';

import '../models/random_lazy_singleton_model.dart';

void configureDependencies(){ // função
  final getIt = GetIt.I;

  getIt.registerFactory(() => RandomFactoryModel()); // vai criar uma nova instancia, toda vez que eu pedir uma instancia de randomfectorymodel, sei pq quando construo uma instancia estou gerando um novo numero
  getIt.registerSingleton(RandomSingletonModel()); // singleton é um design path, muito utilizado quando você quer ter uma unica instancia de uma classe dentro de um sistema inteiro
  getIt.registerLazySingleton(() => RandomLazySingletonModel());
}