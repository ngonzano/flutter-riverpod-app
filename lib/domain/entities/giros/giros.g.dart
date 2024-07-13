// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'giros.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddressImpl _$$AddressImplFromJson(Map<String, dynamic> json) =>
    _$AddressImpl(
      id: json['id'] as String?,
      id_user: json['id_user'] as String?,
      address: json['address'] as String?,
      neighborhood: json['neighborhood'] as String?,
      lat: json['lat'] as String?,
      lng: json['lng'] as String?,
      istienda: json['istienda'] as bool?,
      isdelivery: json['isdelivery'] as bool?,
      referencia: json['referencia'] as String?,
    );

Map<String, dynamic> _$$AddressImplToJson(_$AddressImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'id_user': instance.id_user,
      'address': instance.address,
      'neighborhood': instance.neighborhood,
      'lat': instance.lat,
      'lng': instance.lng,
      'istienda': instance.istienda,
      'isdelivery': instance.isdelivery,
      'referencia': instance.referencia,
    };
