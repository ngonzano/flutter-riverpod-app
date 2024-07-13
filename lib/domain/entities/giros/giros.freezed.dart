// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'giros.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Address _$AddressFromJson(Map<String, dynamic> json) {
  return _Address.fromJson(json);
}

/// @nodoc
mixin _$Address {
  String? get id => throw _privateConstructorUsedError;
  String? get id_user => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get neighborhood => throw _privateConstructorUsedError;
  String? get lat => throw _privateConstructorUsedError;
  String? get lng => throw _privateConstructorUsedError;
  bool? get istienda => throw _privateConstructorUsedError;
  bool? get isdelivery => throw _privateConstructorUsedError;
  String? get referencia => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressCopyWith<Address> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressCopyWith<$Res> {
  factory $AddressCopyWith(Address value, $Res Function(Address) then) =
      _$AddressCopyWithImpl<$Res, Address>;
  @useResult
  $Res call(
      {String? id,
      String? id_user,
      String? address,
      String? neighborhood,
      String? lat,
      String? lng,
      bool? istienda,
      bool? isdelivery,
      String? referencia});
}

/// @nodoc
class _$AddressCopyWithImpl<$Res, $Val extends Address>
    implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? id_user = freezed,
    Object? address = freezed,
    Object? neighborhood = freezed,
    Object? lat = freezed,
    Object? lng = freezed,
    Object? istienda = freezed,
    Object? isdelivery = freezed,
    Object? referencia = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      id_user: freezed == id_user
          ? _value.id_user
          : id_user // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      neighborhood: freezed == neighborhood
          ? _value.neighborhood
          : neighborhood // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String?,
      lng: freezed == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as String?,
      istienda: freezed == istienda
          ? _value.istienda
          : istienda // ignore: cast_nullable_to_non_nullable
              as bool?,
      isdelivery: freezed == isdelivery
          ? _value.isdelivery
          : isdelivery // ignore: cast_nullable_to_non_nullable
              as bool?,
      referencia: freezed == referencia
          ? _value.referencia
          : referencia // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddressImplCopyWith<$Res> implements $AddressCopyWith<$Res> {
  factory _$$AddressImplCopyWith(
          _$AddressImpl value, $Res Function(_$AddressImpl) then) =
      __$$AddressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? id_user,
      String? address,
      String? neighborhood,
      String? lat,
      String? lng,
      bool? istienda,
      bool? isdelivery,
      String? referencia});
}

/// @nodoc
class __$$AddressImplCopyWithImpl<$Res>
    extends _$AddressCopyWithImpl<$Res, _$AddressImpl>
    implements _$$AddressImplCopyWith<$Res> {
  __$$AddressImplCopyWithImpl(
      _$AddressImpl _value, $Res Function(_$AddressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? id_user = freezed,
    Object? address = freezed,
    Object? neighborhood = freezed,
    Object? lat = freezed,
    Object? lng = freezed,
    Object? istienda = freezed,
    Object? isdelivery = freezed,
    Object? referencia = freezed,
  }) {
    return _then(_$AddressImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      id_user: freezed == id_user
          ? _value.id_user
          : id_user // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      neighborhood: freezed == neighborhood
          ? _value.neighborhood
          : neighborhood // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String?,
      lng: freezed == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as String?,
      istienda: freezed == istienda
          ? _value.istienda
          : istienda // ignore: cast_nullable_to_non_nullable
              as bool?,
      isdelivery: freezed == isdelivery
          ? _value.isdelivery
          : isdelivery // ignore: cast_nullable_to_non_nullable
              as bool?,
      referencia: freezed == referencia
          ? _value.referencia
          : referencia // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressImpl implements _Address {
  _$AddressImpl(
      {this.id,
      this.id_user,
      this.address,
      this.neighborhood,
      this.lat,
      this.lng,
      this.istienda,
      this.isdelivery,
      this.referencia});

  factory _$AddressImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressImplFromJson(json);

  @override
  final String? id;
  @override
  final String? id_user;
  @override
  final String? address;
  @override
  final String? neighborhood;
  @override
  final String? lat;
  @override
  final String? lng;
  @override
  final bool? istienda;
  @override
  final bool? isdelivery;
  @override
  final String? referencia;

  @override
  String toString() {
    return 'Address(id: $id, id_user: $id_user, address: $address, neighborhood: $neighborhood, lat: $lat, lng: $lng, istienda: $istienda, isdelivery: $isdelivery, referencia: $referencia)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.id_user, id_user) || other.id_user == id_user) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.neighborhood, neighborhood) ||
                other.neighborhood == neighborhood) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng) &&
            (identical(other.istienda, istienda) ||
                other.istienda == istienda) &&
            (identical(other.isdelivery, isdelivery) ||
                other.isdelivery == isdelivery) &&
            (identical(other.referencia, referencia) ||
                other.referencia == referencia));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, id_user, address,
      neighborhood, lat, lng, istienda, isdelivery, referencia);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressImplCopyWith<_$AddressImpl> get copyWith =>
      __$$AddressImplCopyWithImpl<_$AddressImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressImplToJson(
      this,
    );
  }
}

abstract class _Address implements Address {
  factory _Address(
      {final String? id,
      final String? id_user,
      final String? address,
      final String? neighborhood,
      final String? lat,
      final String? lng,
      final bool? istienda,
      final bool? isdelivery,
      final String? referencia}) = _$AddressImpl;

  factory _Address.fromJson(Map<String, dynamic> json) = _$AddressImpl.fromJson;

  @override
  String? get id;
  @override
  String? get id_user;
  @override
  String? get address;
  @override
  String? get neighborhood;
  @override
  String? get lat;
  @override
  String? get lng;
  @override
  bool? get istienda;
  @override
  bool? get isdelivery;
  @override
  String? get referencia;
  @override
  @JsonKey(ignore: true)
  _$$AddressImplCopyWith<_$AddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
