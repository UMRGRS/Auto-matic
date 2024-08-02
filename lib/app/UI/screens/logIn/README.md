Log_in.dart
------
#### Manejo de estados
```dart
final loginProvider = SimpleProvider(
      (_) => LogInController(sessionProvider.read), autoDispose: false,
);
```
La variable `loginProvider` es una instancia de `SimpleProvider` la cual es creada con base en la clase `LogInController`, cuando se carga la página es usada para manejar el inicio de sesión, lee el controlador de sesiones para cambiar su estado cuando sea necesario

#### Navegación
```dart
onPressed: () {
  context.pushReplacementNamed('landing');
},
```
El método `context.pushReplacementNamed()` agrega una nueva página al stack de navegación y elimina la actual, es llamado en el evento `onPressed` del botón *cancelar*

Widgets/log_in_form.dart
------
#### Formularios
```dart
onChanged: controller.onEmailChanged

onChanged: controller.onPasswordChanged
```
Las funciones `onEmailChanged` y `onPasswordChanged` son llamadas en el evento onChange de los campos de texto del formulario para guardar la información introducida por el usuario

```dart
onPressed: () => sendLogInForm(context)
```
En el evento `onPressed` del botón *Iniciar sesión* se llama a la función `sendLogInForm()` la cual valida el formulario de inicio de sesión y en caso de ser válido redirige al usuario a la página de perfil

```dart
onPressed: () => signInWithGoogle(context)
```
En el evento `onPressed` del botón *Inicia sesión con Google* se llama a la función `signInWithGoogle()` la cual redirige al proceso de incio de sesión con Google y en caso de ser exitoso redirige al usuario a la página de perfil

#### Navegación
```dart
onPressed: () {
  context.pushReplacementNamed('register');
},
```
El método `context.pushReplacementNamed()` agrega una nueva página al stack de navegación y elimina la actual, es llamado en el evento `onPressed`
