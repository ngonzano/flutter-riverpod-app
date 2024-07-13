import 'dart:convert';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_app/config/const/api/environment.dart';
import '../../../domain/domain.dart';

part 'peticion_post.g.dart';

const authorization =
    'JWT eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjI1IiwicGhvbmUiOiI5NDYzNTI1MTYiLCJpYXQiOjE3MTgwMzc3OTIsImV4cCI6MTc0OTU3Mzc5Mn0.5haK1REyVAiV7eNPDFI5x3h23dGTn0dq3Oe02EGvuxE';
const api = Environment.apiDelivery;

@riverpod
class AddressList extends _$AddressList {
  @override
  Future<ResponseApi> build() async => ResponseApi.fromJson({});

  Future<void> addGiros(Address address) async {
    final res = await http.post(
      Uri.http(api, '/api/address/create'),
      // We serialize our Todo object and POST it to the server.
      headers: {
        'Content-Type': 'application/json',
        'Authorization': authorization,
      },
      body: jsonEncode(address.toJson()),
    );

    final data = json.decode(res.body);
    ResponseApi responseApi = ResponseApi.fromJson(data);

    // We update the local cache to match the new state.
    // This will notify all listeners.
    state = AsyncData(responseApi);
    ref.invalidate(listaAddressProvider);
    // ref.notifyListeners();
    // await future;
  }
}

@Riverpod(keepAlive: true)
FutureOr<List<Address>> listaAddress(
  // AutoDisposeFutureProviderRef<List<Address>> ref,
  ListaAddressRef ref,
  String id,
) async {
  try {
    // Using package:http, we fetch a random activity from the Bored API.
    Map<String, String> headers = {
      'Content-type': 'application/json',
      'Authorization': authorization
    };
    final response = await http.get(
      Uri(
        scheme: 'http',
        host: '35.224.226.64',
        port: 3000,
        path: '/api/address/findByUser/$id',
        // queryParameters: {
        //   'id_user': id,
        // },
      ),
      headers: headers,
    );
    // Decodificar el cuerpo de la respuesta
    List<dynamic> jsonList = jsonDecode(response.body);

    // Convertir la lista dinámica a una lista de instancias de Giros
    List<Address> addressList =
        jsonList.map((json) => Address.fromJson(json)).toList();
    ref.onDispose(() {
      print('se esta eliminando el provider');
    });
    return addressList;
  } catch (e) {
    return [];
  }
}
