import 'dart:async';
import 'dart:convert';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;

import 'package:flutter_dotenv/flutter_dotenv.dart';

part 'combinig_request_provider.g.dart';

// Define the location provider
@Riverpod(keepAlive: true)
// @riverpod
Stream<({double longitude, double latitude})> location(LocationRef ref) async* {
  // Verifica los permisos de ubicación y solicita si no se conceden
  bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    throw Exception('Los servicios de ubicación están deshabilitados.');
  }

  LocationPermission permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      throw Exception('Se deniegan los permisos de ubicación.');
    }
  }

  if (permission == LocationPermission.deniedForever) {
    throw Exception('Los permisos de ubicación se deniegan permanentemente.');
  }

  // Obtener actualizaciones de ubicación
  Stream<Position> positionStream = Geolocator.getPositionStream();

  // Asigna el flujo de Posición al formato requerido
  yield* positionStream.map((Position position) {
    return (longitude: position.longitude, latitude: position.latitude);
  });
}

@Riverpod(keepAlive: true)
Future<List<Map>> restaurantsNearMe(RestaurantsNearMeRef ref) async {
  final location = await ref.watch(locationProvider.future);

  final apiKey = dotenv.env['GOOGLE_MAPS_API_KEY'];
  if (apiKey == null) {
    throw Exception('Clave API no encontrada en las variables de entorno');
  }

  final response = await http.get(
    Uri.https('maps.googleapis.com', 'maps/api/place/nearbysearch/json', {
      'location': '${location.latitude},${location.longitude}',
      'radius': '1500',
      'type': 'restaurant',
      'key': apiKey,
    }),
  );

  if (response.statusCode != 200) {
    final error = jsonDecode(response.body);
    throw Exception('Error: ${error['error_message']}');
  }

  final json = jsonDecode(response.body) as Map<String, dynamic>;
  if (json['status'] == 'REQUEST_DENIED') {
    throw Exception(
        'Google Maps API request denied. Error Message: ${json['error_message']}');
  }

  final results = json['results'] as List<dynamic>;
  ref.onDispose(() {
    print('se esta eliminando el provider');
  });
  final rpt = results
      .map((e) => {
            'name': e['name'] as String,
            'icon': e['icon'] as String,
          })
      .toList();
  return rpt as List<Map>;
}
