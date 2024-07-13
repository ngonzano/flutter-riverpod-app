// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_api.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseApi _$ResponseApiFromJson(Map<String, dynamic> json) {
  return _ResponseApi.fromJson(json);
}

/// @nodoc
mixin _$ResponseApi {
  String? get message => throw _privateConstructorUsedError;
  dynamic get error => throw _privateConstructorUsedError;
  bool? get success => throw _privateConstructorUsedError;
  dynamic get data => throw _privateConstructorUsedError;
  List<ResponseApi>? get toList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseApiCopyWith<ResponseApi> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseApiCopyWith<$Res> {
  factory $ResponseApiCopyWith(
          ResponseApi value, $Res Function(ResponseApi) then) =
      _$ResponseApiCopyWithImpl<$Res, ResponseApi>;
  @useResult
  $Res call(
      {String? message,
      dynamic error,
      bool? success,
      dynamic data,
      List<ResponseApi>? toList});
}

/// @nodoc
class _$ResponseApiCopyWithImpl<$Res, $Val extends ResponseApi>
    implements $ResponseApiCopyWith<$Res> {
  _$ResponseApiCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? error = freezed,
    Object? success = freezed,
    Object? data = freezed,
    Object? toList = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
      toList: freezed == toList
          ? _value.toList
          : toList // ignore: cast_nullable_to_non_nullable
              as List<ResponseApi>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseApiImplCopyWith<$Res>
    implements $ResponseApiCopyWith<$Res> {
  factory _$$ResponseApiImplCopyWith(
          _$ResponseApiImpl value, $Res Function(_$ResponseApiImpl) then) =
      __$$ResponseApiImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? message,
      dynamic error,
      bool? success,
      dynamic data,
      List<ResponseApi>? toList});
}

/// @nodoc
class __$$ResponseApiImplCopyWithImpl<$Res>
    extends _$ResponseApiCopyWithImpl<$Res, _$ResponseApiImpl>
    implements _$$ResponseApiImplCopyWith<$Res> {
  __$$ResponseApiImplCopyWithImpl(
      _$ResponseApiImpl _value, $Res Function(_$ResponseApiImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? error = freezed,
    Object? success = freezed,
    Object? data = freezed,
    Object? toList = freezed,
  }) {
    return _then(_$ResponseApiImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
      toList: freezed == toList
          ? _value._toList
          : toList // ignore: cast_nullable_to_non_nullable
              as List<ResponseApi>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseApiImpl implements _ResponseApi {
  _$ResponseApiImpl(
      {this.message,
      this.error,
      this.success,
      this.data,
      final List<ResponseApi>? toList})
      : _toList = toList;

  factory _$ResponseApiImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseApiImplFromJson(json);

  @override
  final String? message;
  @override
  final dynamic error;
  @override
  final bool? success;
  @override
  final dynamic data;
  final List<ResponseApi>? _toList;
  @override
  List<ResponseApi>? get toList {
    final value = _toList;
    if (value == null) return null;
    if (_toList is EqualUnmodifiableListView) return _toList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ResponseApi(message: $message, error: $error, success: $success, data: $data, toList: $toList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseApiImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.success, success) || other.success == success) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other._toList, _toList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      message,
      const DeepCollectionEquality().hash(error),
      success,
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(_toList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseApiImplCopyWith<_$ResponseApiImpl> get copyWith =>
      __$$ResponseApiImplCopyWithImpl<_$ResponseApiImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseApiImplToJson(
      this,
    );
  }
}

abstract class _ResponseApi implements ResponseApi {
  factory _ResponseApi(
      {final String? message,
      final dynamic error,
      final bool? success,
      final dynamic data,
      final List<ResponseApi>? toList}) = _$ResponseApiImpl;

  factory _ResponseApi.fromJson(Map<String, dynamic> json) =
      _$ResponseApiImpl.fromJson;

  @override
  String? get message;
  @override
  dynamic get error;
  @override
  bool? get success;
  @override
  dynamic get data;
  @override
  List<ResponseApi>? get toList;
  @override
  @JsonKey(ignore: true)
  _$$ResponseApiImplCopyWith<_$ResponseApiImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
