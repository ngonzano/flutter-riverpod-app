import 'package:freezed_annotation/freezed_annotation.dart';

part 'activity.freezed.dart';
part 'activity.g.dart';

/// La respuesta del punto final `GET /api/activity`.
/// Se define usando `freezed` y `json_serializable`.
@freezed
class Activity with _$Activity {
  factory Activity({
    String? key,
    String? activity,
    String? type,
    required String name,
    int? participants,
    double? price,
  }) = _Activity;

  /// Convierte un objeto JSON en una instancia de [Actividad].
  /// Esto permite la lectura segura de tipos de la respuesta de la API.
  factory Activity.fromJson(Map<String, dynamic> json) =>
      _$ActivityFromJson(json);
}
