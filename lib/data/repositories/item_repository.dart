import 'package:flutter_pokemon_app/data/entities/item.dart';

abstract class ItemRepository {
  const ItemRepository();

  Future<List<Item>> getAllItems();

  Future<List<Item>> getItems({required int limit, required int page});
}
