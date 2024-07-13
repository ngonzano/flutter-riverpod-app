# riverpod_app

A new Flutter project.

## Getting Started riverpod
```
ejecutar para riverpod
flutter pub run build_runner watch
```

# Tabla de prueba con datos de prueba en db pidepe
url: 35.224.226.64:3000
drop table if exists giros_test cascade;
create table giros_test(
	idgiro bigserial primary key,
	descripcion varchar(255) not null unique,
	estado boolean null default true,
	image varchar(255) null
);
insert into giros_test (	DESCRIPCION ) 
       values ('Persona Natural');
insert into giros_test (	DESCRIPCION ) 
       values ('Licores');
insert into giros_test (	DESCRIPCION ) 
       values ('Restaurante');
insert into giros_test (	DESCRIPCION ) 
       values ('Pizzería');
insert into giros_test (	DESCRIPCION ) 
       values ('Polleria');
insert into giros_test (	DESCRIPCION ) 
       values ('Tecnologia');
insert into giros_test (	DESCRIPCION ) 
       values ('Libreria');
insert into giros_test (	DESCRIPCION ) 
       values ('Veterinaria');
insert into giros_test (	DESCRIPCION ) 
       values ('Mototaxi');


# para firebase 
dart pub global activate flutterfire_cli
flutterfire configure

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}