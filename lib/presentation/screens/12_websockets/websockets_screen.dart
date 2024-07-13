import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:riverpod_app/config/utils/extensiones.dart';

import '../../../git_stamp/git_stamp.dart';
import '../../../git_stamp/src/git_stamp_page.dart';

class WebsocketsScreen extends StatefulWidget {
  const WebsocketsScreen({super.key});

  @override
  WebsocketsScreenState createState() => WebsocketsScreenState();
}

class WebsocketsScreenState extends State<WebsocketsScreen> {
  final DatabaseReference _databaseReference =
      FirebaseDatabase.instance.ref().child('users');
  final List<Map<dynamic, dynamic>> _users = [];

  late StreamSubscription<DatabaseEvent> _onChildAddedSubscription;
  late StreamSubscription<DatabaseEvent> _onChildChangedSubscription;
  late StreamSubscription<DatabaseEvent> _onChildRemovedSubscription;

  @override
  void initState() {
    super.initState();
    _setupDatabaseListeners();
  }

// _setupDatabaseListeners emula un For
  void _setupDatabaseListeners() {
    _onChildAddedSubscription = _databaseReference.onChildAdded.listen((event) {
      if (!mounted) return;
      final user = event.snapshot.value as Map<dynamic, dynamic>;
      final userKey = event.snapshot.key;

      // Verifica y maneja valores nulos
      final name = user['name'] ?? 'No name';
      final age = user['age'] != null ? user['age'].toString() : 'No age';

      setState(() {
        _users.add({
          'key': userKey,
          'name': name,
          'age': age,
        });
      });
    });
// Cuando se actualiza los datos || probar
    _onChildChangedSubscription =
        _databaseReference.onChildChanged.listen((event) {
      if (!mounted) return;
      final updatedUser = event.snapshot.value as Map<dynamic, dynamic>;
      final userKey = event.snapshot.key;

      final name = updatedUser['name'] ?? 'No name';
      final age =
          updatedUser['age'] != null ? updatedUser['age'].toString() : 'No age';

      setState(() {
        final index = _users.indexWhere((user) => user['key'] == userKey);
        if (index >= 0) {
          _users[index] = {
            'key': userKey,
            'name': name,
            'age': age,
          };
        }
      });
    });

    _onChildRemovedSubscription =
        _databaseReference.onChildRemoved.listen((event) {
      if (!mounted) return;
      setState(() {
        _users.removeWhere((user) => user['key'] == event.snapshot.key);
      });
    });
  }

  @override
  void dispose() {
    _onChildAddedSubscription.cancel();
    _onChildChangedSubscription.cancel();
    _onChildRemovedSubscription.cancel();
    super.dispose();
  }

  void _addUser() {
    _databaseReference
        .push()
        .set({'name': Platform.isAndroid ? 'android' : 'iOS', 'age': 30});
  }

  void _removeUser(String key) {
    _databaseReference.child(key).remove();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Firebase Realtime Database Example"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
            onPressed: _addUser,
            child: const Text("Add User"),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _users.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_users[index]['name'].toString().capitalize()),
                  subtitle: Text(_users[index]['age'].toString()),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () {
                      _removeUser(_users[index]['key']);
                    },
                  ),
                );
              },
            ),
          ),
          const Text('Version: v1.2.3'),
          const Text('Build: ${GitStamp.repoCreationDate}'),
          const Text('Branch: ${GitStamp.buildBranch}'),
          Text('SHA: ${GitStamp.latestCommit.hash}'),
          IconButton(
            onPressed: () => showGitStampPage(context: context),
            icon: const Icon(Icons.book),
          ),
        ],
      ),
    );
  }
}
