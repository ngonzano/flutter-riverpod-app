// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseApiImpl _$$ResponseApiImplFromJson(Map<String, dynamic> json) =>
    _$ResponseApiImpl(
      message: json['message'] as String?,
      error: json['error'],
      success: json['success'] as bool?,
      data: json['data'],
      toList: (json['toList'] as List<dynamic>?)
          ?.map((e) => ResponseApi.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ResponseApiImplToJson(_$ResponseApiImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'error': instance.error,
      'success': instance.success,
      'data': instance.data,
      'toList': instance.toList,
    };
