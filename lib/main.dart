import 'package:flutter/material.dart';
import 'package:flutter_pokemon_app/presenter/app.dart';
import 'package:flutter_pokemon_app/di.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await configureDependencies();

  runApp(
    GlobalBlocProviders(
      child: PokedexApp(),
    ),
  );
}
