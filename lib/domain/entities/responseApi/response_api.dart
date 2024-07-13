import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_api.freezed.dart';
part 'response_api.g.dart';

/// La respuesta del punto final `GET /api/activity`.
/// Se define usando `freezed` y `json_serializable`.
@freezed
class ResponseApi with _$ResponseApi {
  factory ResponseApi({
    String? message,
    dynamic error,
    bool? success,
    dynamic data,
    List<ResponseApi>? toList,
  }) = _ResponseApi;

  /// Convierte un objeto JSON en una instancia de [Actividad].
  /// Esto permite la lectura segura de tipos de la respuesta de la API.
  factory ResponseApi.fromJson(Map<String, dynamic> json) =>
      _$ResponseApiFromJson(json);
}
