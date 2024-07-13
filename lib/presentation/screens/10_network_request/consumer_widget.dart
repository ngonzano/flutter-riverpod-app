import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/domain.dart';
import '../../providers/providers.dart';

/// Subclasificamos "ConsumerWidget" en lugar de "StatelessWidget".
/// Esto equivale a crear un "StatelessWidget" y volver a ajustar "Consumer".
class ConsumerWidgetPage extends ConsumerWidget {
  const ConsumerWidgetPage({super.key});

  @override
  // Observe cómo "build" ahora recibe un parámetro adicional: "ref"
  Widget build(BuildContext context, WidgetRef ref) {
    // Podemos usar "ref.watch" dentro de nuestro widget como lo hicimos usando "Consumer"
    final AsyncValue<Activity> activity = ref.watch(activityProvider);

    // La lógica de renderizado sigue siendo la misma
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
