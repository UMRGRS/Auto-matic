Login
------
#### Manejo de estados
```dart
final loginProvider = SimpleProvider(
      (_) => LogInController(sessionProvider.read), autoDispose: false,
);
```
La variable `loginProvider` es una instancia de `SimpleProvider` la cual es creada con base en la clase `LogInController`[^1], cuando se carga la página es usada para manejar el inicio de sesión, lee controlador de sesiones para cambiar su estado cuando sea necesario

#### Navegación
```dart
onPressed: () {
  context.pushReplacementNamed('landing');
},
```
El método `context.pushNamed()` agrega una nueva página al stack de navegación, es llamado en el evento `onPressed`

[^1]: [LoginController](https://github.com/UMRGRS/Auto-matic/blob/main/lib/app/UI/screens/logIn/controller/README.md#login_controller)
