import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pokemon_app/presenter/widgets/loading.dart';
import 'package:flutter_pokemon_app/utils/extensions/animation.dart';
import 'package:flutter_pokemon_app/data/states/item/item_bloc.dart';
import 'package:flutter_pokemon_app/data/states/item/item_event.dart';
import 'package:flutter_pokemon_app/data/states/item/item_selector.dart';
import 'package:flutter_pokemon_app/data/states/item/item_state.dart';
import 'package:flutter_pokemon_app/presenter/modals/generation_modal.dart';
import 'package:flutter_pokemon_app/presenter/modals/search_modal.dart';
import 'package:flutter_pokemon_app/presenter/widgets/animated_overlay.dart';
import 'package:flutter_pokemon_app/presenter/widgets/app_bar.dart';
import 'package:flutter_pokemon_app/presenter/widgets/fab.dart';
import 'package:flutter_pokemon_app/presenter/widgets/scaffold.dart';
import 'package:flutter_pokemon_app/presenter/widgets/pokemon_refresh_control.dart';

import 'widgets/item_card.dart';

part 'sections/fab_menu.dart';
part 'sections/items_grid.dart';

@RoutePage()
class ItemsPage extends StatefulWidget {
  const ItemsPage({super.key});

  @override
  ItemsPageState createState() => ItemsPageState();
}

class ItemsPageState extends State<ItemsPage> {
  @override
  Widget build(BuildContext context) {
    return PokeballScaffold(
      body: const Stack(
        children: [
          _ItemGrid(),
        ],
      ),
    );
  }
}
