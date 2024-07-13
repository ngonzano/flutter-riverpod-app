import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../presentation/screens/screens.dart';

part 'app_router.g.dart';

@riverpod
GoRouter appRoute(AppRouteRef ref) {
  return GoRouter(routes: [
    GoRoute(
      path: '/combining/requests',
      builder: (context, state) => const LocationWidget(),
    ),
    GoRoute(
      path: '/websockets',
      builder: (context, state) => const WebsocketsScreen(),
    ),
    GoRoute(
      path: '/side/effects',
      builder: (context, state) => const SideEffectsPage(),
    ),
    GoRoute(
      path: '/consumer',
      builder: (context, state) => const ConsumerPage(),
    ),
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/provider',
      builder: (context, state) => const ProviderScreen(),
    ),
    GoRoute(
      path: '/provider-router',
      builder: (context, state) => const RouterScreen(),
    ),
    GoRoute(
      path: '/state-provider',
      builder: (context, state) => const StateProviderScreen(),
    ),
    GoRoute(
      path: '/todo',
      builder: (context, state) => const TodoScreen(),
    ),
    GoRoute(
      path: '/future-provider',
      builder: (context, state) => const FutureProviderScreen(),
    ),
    GoRoute(
      path: '/future-family-provider',
      builder: (context, state) => const FamilyFutureScreen(),
    ),
    GoRoute(
      path: '/stream-provider',
      builder: (context, state) => const StreamProviderScreen(),
    ),
    GoRoute(
      path: '/change-notifier-provider',
      builder: (context, state) => const ChangeNotifierScreen(),
    ),
    GoRoute(
      path: '/state-notifier-provider',
      builder: (context, state) => const StateNotifierScreen(),
    ),
  ]);
}
