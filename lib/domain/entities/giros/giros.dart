import 'package:freezed_annotation/freezed_annotation.dart';

part 'giros.freezed.dart';
part 'giros.g.dart';

/// La respuesta del punto final `GET /api/activity`.
/// Se define usando `freezed` y `json_serializable`.
@freezed
class Address with _$Address {
  factory Address({
    String? id,
    String? id_user,
    String? address,
    String? neighborhood,
    String? lat,
    String? lng,
    bool? istienda,
    bool? isdelivery,
    String? referencia,
  }) = _Address;

  /// Convierte un objeto JSON en una instancia de [Actividad].
  /// Esto permite la lectura segura de tipos de la respuesta de la API.
  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
}
