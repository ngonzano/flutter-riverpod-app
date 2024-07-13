import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/domain.dart';
import '../../providers/providers.dart';

/// The homepage of our application
class ConsumerPage extends StatelessWidget {
  const ConsumerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        // Leer el proveedor de actividad. Esto iniciará la solicitud de red.
        // si aún no se ha iniciado.
        // Al usar ref.watch, este widget se reconstruirá cada vez que
        // el proveedor de actividades se actualiza. Esto puede suceder cuando:
        // - La respuesta pasa de "cargando" a "datos/error"
        // - La solicitud fue actualizada
        // - El resultado se modificó localmente (como cuando se realizan efectos secundarios)
        // ...
        final AsyncValue<Activity> activity = ref.watch(activityProvider);

        return Scaffold(
          appBar: AppBar(),
          body: Center(
            /// Dado que las solicitudes de red son asincrónicas y pueden fallar, debemos
            /// maneja los estados de error y de carga. Podemos usar la combinación de patrones para esto.
            /// Alternativamente podríamos usar `if (actividad.isLoading) {...} else if (...)`
            child: activity.when(
                data: (data) => Text('Nombre Pokemon: ${data.name}'),
                error: (error, stackTrace) =>
                    Text('Ups, ocurrio un error: \n$error'),
                loading: () => const CircularProgressIndicator()),
          ),
        );
      },
    );
  }
}
