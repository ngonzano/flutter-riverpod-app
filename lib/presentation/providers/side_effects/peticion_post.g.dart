// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'peticion_post.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$listaAddressHash() => r'8d4ac4284d32102251d1593ce460b6838c363fe0';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [listaAddress].
@ProviderFor(listaAddress)
const listaAddressProvider = ListaAddressFamily();

/// See also [listaAddress].
class ListaAddressFamily extends Family<AsyncValue<List<Address>>> {
  /// See also [listaAddress].
  const ListaAddressFamily();

  /// See also [listaAddress].
  ListaAddressProvider call(
    String id,
  ) {
    return ListaAddressProvider(
      id,
    );
  }

  @override
  ListaAddressProvider getProviderOverride(
    covariant ListaAddressProvider provider,
  ) {
    return call(
      provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'listaAddressProvider';
}

/// See also [listaAddress].
class ListaAddressProvider extends FutureProvider<List<Address>> {
  /// See also [listaAddress].
  ListaAddressProvider(
    String id,
  ) : this._internal(
          (ref) => listaAddress(
            ref as ListaAddressRef,
            id,
          ),
          from: listaAddressProvider,
          name: r'listaAddressProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$listaAddressHash,
          dependencies: ListaAddressFamily._dependencies,
          allTransitiveDependencies:
              ListaAddressFamily._allTransitiveDependencies,
          id: id,
        );

  ListaAddressProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  Override overrideWith(
    FutureOr<List<Address>> Function(ListaAddressRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ListaAddressProvider._internal(
        (ref) => create(ref as ListaAddressRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  FutureProviderElement<List<Address>> createElement() {
    return _ListaAddressProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ListaAddressProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ListaAddressRef on FutureProviderRef<List<Address>> {
  /// The parameter `id` of this provider.
  String get id;
}

class _ListaAddressProviderElement extends FutureProviderElement<List<Address>>
    with ListaAddressRef {
  _ListaAddressProviderElement(super.provider);

  @override
  String get id => (origin as ListaAddressProvider).id;
}

String _$addressListHash() => r'e00645cffbdfe66efb383299d641255851fc84e6';

/// See also [AddressList].
@ProviderFor(AddressList)
final addressListProvider =
    AutoDisposeAsyncNotifierProvider<AddressList, ResponseApi>.internal(
  AddressList.new,
  name: r'addressListProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$addressListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AddressList = AutoDisposeAsyncNotifier<ResponseApi>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
