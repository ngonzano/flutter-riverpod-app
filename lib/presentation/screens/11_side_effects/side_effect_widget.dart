import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_app/presentation/providers/providers.dart';

import '../../../domain/domain.dart';

class SideEffectsPage extends ConsumerWidget {
  const SideEffectsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final AsyncValue<ResponseApi> rpt = ref.watch(girosListProvider);
    final rpt2 = ref.watch(listaAddressProvider('25'));

    return SafeArea(
      top: false,
      child: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: rpt2.when(
            data: (data) => RefreshIndicator(
              //no necesario, pero util
              onRefresh: () async {
                ref.invalidate(listaAddressProvider);
              },
              child: ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('${data[index].address}'),
                  );
                },
              ),
            ),
            error: ((error, stackTrace) => Text('$error')),
            loading: () => const CircularProgressIndicator(),
          ),
        ),
        bottomNavigationBar: ElevatedButton(
          onPressed: () {
            // Usando "ref.read" combinado con "myProvider.notifier", podemos
            // obtenemos la instancia de clase de nuestro notificador. Esto nos permite
            // para llamar al método "addTodo".
            if (!context.mounted) return;
            ref.read(addressListProvider.notifier).addGiros(
                  Address(
                    id_user: '25',
                    address: 'addres riverpod test',
                    neighborhood: 'neighborhood riverpod test',
                    referencia: 'referencia riverpod test',
                  ),
                );
          },
          child: Row(
            children: [
              Text(
                rpt2.isLoading ? 'Cargando ...' : 'Agregar direccion',
                style: TextStyle(
                    color: rpt2.isLoading ? Colors.white : Colors.amber),
              ),
              if (rpt2.isLoading && rpt2.isRefreshing) ...[
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: CircularProgressIndicator(
                    color: Colors.white,
                  ),
                ),
              ]
            ],
          ),
        ),
      ),
    );
  }
}
