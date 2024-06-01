import 'package:flutter/cupertino.dart';
import 'package:flutter_pokemon_app/presenter/widgets/loading.dart';

class PokemonRefreshControl extends StatelessWidget {
  final Future<void> Function() onRefresh;

  const PokemonRefreshControl({
    super.key,
    required this.onRefresh,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoSliverRefreshControl(
      onRefresh: onRefresh,
      builder: (_, __, ___, ____, _____) => const PikaLoadingIndicator(),
    );
  }
}
