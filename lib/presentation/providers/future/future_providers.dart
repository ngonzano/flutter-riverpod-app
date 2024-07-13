import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_app/config/config.dart';

part 'future_providers.g.dart';

//1
@Riverpod(keepAlive: true)
FutureOr<String> pokemonName(PokemonNameRef ref) async {
  final pokemonId = ref.watch(pokemonIdProvider);
  final pokemonName = await PokemonInformation.getPokemonName(pokemonId);
  ref.onDispose(() {
    print('se esta eliminando el provider');
  });

  return pokemonName;
}

//2
@Riverpod(keepAlive: true)
class PokemonId extends _$PokemonId {
  @override
  int build() => 1;
  void nextPokemon() {
    state++;
  }

  void prevPokemon() {
    if (state > 1) {
      state--;
    }
  }
}

//! Anteriormente llamados Family
//3
@Riverpod(keepAlive: true)
Future<String> pokemon(PokemonRef ref, int pokemonId) async {
  final pokemonName = await PokemonInformation.getPokemonName(pokemonId);
  return pokemonName;
}
