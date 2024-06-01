import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pokemon_app/presenter/navigation/navigation.dart';
import 'package:flutter_pokemon_app/presenter/widgets/loading.dart';
import 'package:flutter_pokemon_app/utils/extensions/animation.dart';
import 'package:flutter_pokemon_app/data/entities/pokemon.dart';
import 'package:flutter_pokemon_app/data/states/pokemon/pokemon_bloc.dart';
import 'package:flutter_pokemon_app/data/states/pokemon/pokemon_event.dart';
import 'package:flutter_pokemon_app/data/states/pokemon/pokemon_selector.dart';
import 'package:flutter_pokemon_app/data/states/pokemon/pokemon_state.dart';
import 'package:flutter_pokemon_app/presenter/modals/generation_modal.dart';
import 'package:flutter_pokemon_app/presenter/modals/search_modal.dart';
import 'package:flutter_pokemon_app/presenter/widgets/app_bar.dart';
import 'package:flutter_pokemon_app/presenter/widgets/pokemon_card.dart';
import 'package:flutter_pokemon_app/presenter/widgets/animated_overlay.dart';
import 'package:flutter_pokemon_app/presenter/widgets/fab.dart';
import 'package:flutter_pokemon_app/presenter/widgets/scaffold.dart';
import 'package:flutter_pokemon_app/presenter/widgets/pokemon_refresh_control.dart';

part 'sections/fab_menu.dart';
part 'sections/pokemon_grid.dart';

@RoutePage()
class PokedexPage extends StatefulWidget {
  const PokedexPage({super.key});

  @override
  State<StatefulWidget> createState() => _PokedexPageState();
}

class _PokedexPageState extends State<PokedexPage> {
  @override
  Widget build(BuildContext context) {
    return PokeballScaffold(
      body: const Stack(
        children: [
          _PokemonGrid(),
          _FabMenu(),
        ],
      ),
    );
  }
}
