import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pokemon_app/presenter/navigation/navigation.dart';
import 'package:flutter_pokemon_app/data/states/settings/settings_bloc.dart';
import 'package:flutter_pokemon_app/data/states/settings/settings_event.dart';
import 'package:flutter_pokemon_app/data/states/settings/settings_selector.dart';
import 'package:flutter_pokemon_app/presenter/themes/colors.dart';
import 'package:flutter_pokemon_app/presenter/themes/extensions.dart';
import 'package:flutter_pokemon_app/presenter/themes/themes/themes.dark.dart';
import 'package:flutter_pokemon_app/presenter/themes/themes/themes.light.dart';
import 'package:flutter_pokemon_app/presenter/widgets/app_bar.dart';
import 'package:flutter_pokemon_app/presenter/widgets/button.dart';
import 'package:flutter_pokemon_app/presenter/widgets/input.dart';
import 'package:flutter_pokemon_app/presenter/widgets/keyboard.dart';
import 'package:flutter_pokemon_app/presenter/widgets/scaffold.dart';

part 'widgets/category_card.dart';
part 'widgets/news_card.dart';
part 'sections/header.dart';
part 'sections/news.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return KeyboardDismisser(
      child: Scaffold(
        backgroundColor: context.colors.backgroundDark,
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) => [
            AppExpandableSliverAppBar(
              backgroundColor: context.colors.primary,
              title: Visibility(
                visible: innerBoxIsScrolled,
                child: const Text('Pokemon'),
              ),
              background: _HeaderSection(
                height: min(MediaQuery.sizeOf(context).height * 0.82, 582),
              ),
            ),
          ],
          body: const _NewsSection(),
        ),
      ),
    );
  }
}
