import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/providers.dart';

class LocationWidget extends ConsumerWidget {
  const LocationWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final restaurantsFuture = ref.watch(restaurantsNearMeProvider);
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: restaurantsFuture.when(
        data: (restaurants) => SizedBox(
          height: size.height,
          width: size.width,
          child: ListView.builder(
            itemCount: restaurants.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(restaurants[index]['name']),
              );
            },
          ),
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('Error: $error')),
      ),
    );
  }
}
