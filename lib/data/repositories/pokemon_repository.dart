import 'package:flutter_pokemon_app/data/entities/pokemon.dart';

abstract class PokemonRepository {
  const PokemonRepository();

  Future<List<Pokemon>> getAllPokemons();

  Future<List<Pokemon>> getPokemons({required int limit, required int page});

  Future<Pokemon?> getPokemon(String number);
}
