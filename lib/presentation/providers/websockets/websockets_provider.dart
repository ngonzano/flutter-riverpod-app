import 'package:firebase_database/firebase_database.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'websockets_provider.g.dart';

@riverpod
int synchronousExample(SynchronousExampleRef ref) {
  return 100;
}

@Riverpod(keepAlive: true)
Stream<int> streamExample(StreamExampleRef ref) async* {
  // Cada 1 segundo, genera un número del 0 al 41.
  // Esto podría reemplazarse con un Stream de Firestore o GraphQL o cualquier otra cosa.
  for (var i = 0; i < 42; i++) {
    yield i;
    await Future<void>.delayed(const Duration(seconds: 1));
  }
}

@riverpod
Raw<Stream<int>> rawStream(RawStreamRef ref) {
  // "Raw" is a typedef. No need to wrap the return
  // value in a "Raw" constructor.
  return const Stream<int>.empty();
}

@Riverpod(keepAlive: true)
Stream<List<Map>> streamExampleFirebase(StreamExampleFirebaseRef ref) async* {
  final List<Map> users = [];
  final databaseReference = FirebaseDatabase.instance.ref().child('users');
  databaseReference.onChildAdded.listen((event) {
    users.add(event.snapshot.value as Map);
  });

  yield users;
}

@riverpod
void addUser(AddUserRef ref) async {
  final databaseReference = FirebaseDatabase.instance.ref().child('users');
  databaseReference.push().set({'name': 'Nilton', 'age': 36});
  ref.invalidate(streamExampleFirebaseProvider);
}

@riverpod
Stream<List<Map>> setupDatabaseListeners(SetupDatabaseListenersRef ref) async* {
  final DatabaseReference databaseReference =
      FirebaseDatabase.instance.ref().child('users');
  final List<Map> users = [];
  databaseReference.onChildAdded.listen((event) {
    users.add(event.snapshot.value as Map<dynamic, dynamic>);
  });

  databaseReference.onChildChanged.listen((event) {
    final index = users.indexWhere((user) => user['key'] == event.snapshot.key);
    if (index >= 0) {
      users[index] = event.snapshot.value as Map<dynamic, dynamic>;
    }
  });

  databaseReference.onChildRemoved.listen((event) {
    users.removeWhere((user) => user['key'] == event.snapshot.key);
  });
  yield users;
}
