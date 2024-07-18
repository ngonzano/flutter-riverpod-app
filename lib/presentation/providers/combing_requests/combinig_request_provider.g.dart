// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'combinig_request_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$locationHash() => r'78032df56176caa429f9aaa9485ed99d70478e86';

/// See also [location].
@ProviderFor(location)
final locationProvider =
    StreamProvider<({double longitude, double latitude})>.internal(
  location,
  name: r'locationProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$locationHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef LocationRef = StreamProviderRef<({double longitude, double latitude})>;
String _$restaurantsNearMeHash() => r'132c4f6408229127800279cfc30421ef877d05c8';

/// See also [restaurantsNearMe].
@ProviderFor(restaurantsNearMe)
final restaurantsNearMeProvider = FutureProvider<List<Map>>.internal(
  restaurantsNearMe,
  name: r'restaurantsNearMeProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$restaurantsNearMeHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef RestaurantsNearMeRef = FutureProviderRef<List<Map>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
