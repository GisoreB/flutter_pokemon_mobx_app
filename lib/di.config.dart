// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:flutter_pokemon_app/data/repositories/item_repository.dart'
    as _i8;
import 'package:flutter_pokemon_app/data/repositories/item_repository.default.dart'
    as _i9;
import 'package:flutter_pokemon_app/data/repositories/pokemon_repository.dart'
    as _i10;
import 'package:flutter_pokemon_app/data/repositories/pokemon_repository.default.dart'
    as _i11;
import 'package:flutter_pokemon_app/data/source/github/github_datasource.dart'
    as _i7;
import 'package:flutter_pokemon_app/data/source/github/network.dart' as _i6;
import 'package:flutter_pokemon_app/data/source/local/local_datasource.dart'
    as _i3;
import 'package:flutter_pokemon_app/data/states/item/item_bloc.dart' as _i14;
import 'package:flutter_pokemon_app/data/states/pokemon/pokemon_bloc.dart'
    as _i12;
import 'package:flutter_pokemon_app/data/states/settings/settings_bloc.dart'
    as _i4;
import 'package:flutter_pokemon_app/data/usecases/item_usecases.dart' as _i15;
import 'package:flutter_pokemon_app/data/usecases/pokemon_usecases.dart'
    as _i13;
import 'package:flutter_pokemon_app/di.dart' as _i16;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    await gh.singletonAsync<_i3.LocalDataSource>(
      () {
        final i = const _i3.LocalDataSource();
        return i.initialize().then((_) => i);
      },
      preResolve: true,
    );
    gh.singleton<_i4.SettingsBloc>(() => _i4.SettingsBloc());
    gh.singleton<_i5.Dio>(() => registerModule.dio);
    gh.singleton<_i6.NetworkManager>(
        () => _i6.NetworkManager(dio: gh<_i5.Dio>()));
    gh.singleton<_i7.GithubDataSource>(
        () => _i7.GithubDataSource(networkManager: gh<_i6.NetworkManager>()));
    gh.singleton<_i8.ItemRepository>(() => _i9.DefaultItemRepository(
          githubDataSource: gh<_i7.GithubDataSource>(),
          localDataSource: gh<_i3.LocalDataSource>(),
        ));
    gh.singleton<_i10.PokemonRepository>(() => _i11.PokemonDefaultRepository(
          githubDataSource: gh<_i7.GithubDataSource>(),
          localDataSource: gh<_i3.LocalDataSource>(),
        ));
    gh.singleton<_i12.PokemonBloc>(() =>
        _i12.PokemonBloc(pokemonRepository: gh<_i10.PokemonRepository>()));
    gh.singleton<_i13.GetAllPokemonsUseCase>(() => _i13.GetAllPokemonsUseCase(
        pokemonRepository: gh<_i10.PokemonRepository>()));
    gh.singleton<_i13.GetPokemonsUseCase>(() => _i13.GetPokemonsUseCase(
        pokemonRepository: gh<_i10.PokemonRepository>()));
    gh.singleton<_i13.GetPokemonUseCase>(() => _i13.GetPokemonUseCase(
        pokemonRepository: gh<_i10.PokemonRepository>()));
    gh.singleton<_i14.ItemBloc>(
        () => _i14.ItemBloc(itemRepository: gh<_i8.ItemRepository>()));
    gh.singleton<_i15.GetItemUseCase>(
        () => _i15.GetItemUseCase(itemRepository: gh<_i8.ItemRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i16.RegisterModule {}
