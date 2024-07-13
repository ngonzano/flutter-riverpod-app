// We extend ConsumerStatefulWidget.
// This is the equivalent of "Consumer" + "StatefulWidget".
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/domain.dart';
import '../../providers/providers.dart';

class ConsumerStatefulWidgetPage extends ConsumerStatefulWidget {
  const ConsumerStatefulWidgetPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeState();
}

// Observe cómo en lugar de "Estado", estamos ampliando "ConsumerState".
// Esto utiliza el mismo principio que "ConsumerWidget" frente a "StatelessWidget".
class _HomeState extends ConsumerState<ConsumerStatefulWidgetPage> {
  @override
  void initState() {
    super.initState();

// Los ciclos de vida estatales también tienen acceso a "ref".
    // Esto permite cosas como agregar un oyente en un proveedor específico
    // para mostrar cuadros de diálogo/barras de refrigerios.
    ref.listenManual(activityProvider, (previous, next) {
      // TODO show a snackbar/dialog
    });
  }

  @override
  Widget build(BuildContext context) {
    // "ref" ya no se pasa como parámetro, sino que es una propiedad de "ConsumerState".
    // Por lo tanto, podemos seguir usando "ref.watch" dentro de "build".
    final AsyncValue<Activity> activity = ref.watch(activityProvider);

    return Center(
      /// Dado que las solicitudes de red son asincrónicas y pueden fallar, debemos
      /// maneja los estados de error y de carga. Podemos usar la combinación de patrones para esto.
      /// Alternativamente podríamos usar `if (actividad.isLoading) {...} else if (...)`
      child: activity.when(
          data: (data) => Text('Nombre Pokemon: ${data.name}'),
          error: (error, stackTrace) => Text('Ups, ocurrio un error: \n$error'),
          loading: () => const CircularProgressIndicator()),
    );
  }
}
