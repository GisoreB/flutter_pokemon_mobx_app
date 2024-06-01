import 'package:flutter/foundation.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_pokemon_app/presenter/pages/home/home.dart';
import 'package:flutter_pokemon_app/presenter/pages/items/items.dart';
import 'package:flutter_pokemon_app/presenter/pages/pokedex/pokedex.dart';
import 'package:flutter_pokemon_app/presenter/pages/pokemon_info/pokemon_info.dart';
import 'package:flutter_pokemon_app/presenter/pages/splash/splash.dart';
import 'package:flutter_pokemon_app/presenter/pages/types/types.dart';

part 'navigation.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(path: '/', page: SplashRoute.page),
        AutoRoute(path: '/home', page: HomeRoute.page),
        AutoRoute(path: '/pokemons', page: PokedexRoute.page),
        AutoRoute(path: '/pokemons/:id', page: PokemonInfoRoute.page),
        AutoRoute(path: '/types', page: TypeEffectRoute.page),
        AutoRoute(path: '/items', page: ItemsRoute.page),
      ];

  @override
  RouteType get defaultRouteType => const RouteType.custom(
        transitionsBuilder: TransitionsBuilders.fadeIn,
      );
}
