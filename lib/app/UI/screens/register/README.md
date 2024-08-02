Register.dart
------
#### Manejo de estados
```dart
final registerProvider = StateProvider<RegisterController, RegisterState>((_) => RegisterController());
```
La variable `registerProvider` es una instancia de `StateProvider` la cual es creada con base en la clase `RegisterController`, 
cuando se carga la página es usada para manejar el formulario de registro de usuarios y las variables involucradas en el mismo

#### Navegación
```dart
onPressed: () {
  context.pushReplacementNamed('landing');
},
```
El método `context.pushReplacementNamed()` agrega una nueva página al stack de navegación y elimina la actual, es llamado 
en el evento `onPressed` del botón *cancelar*

Widgets/create_account.dart
------
#### Formularios
```dart
onChanged: controller.onNameChanged

onChanged: controller.onLastNameChanged

onChanged: controller.onEmailChanged

onChanged: controller.onPasswordChanged

onChanged: controller.onVPasswordChanged,
```
Las funciones `onNameChange`, `onLastnameChange`, `onEmailChanged`, `onPasswordChanged` y `onVPasswordChanged` son llamadas 
en el evento onChange de los campos de texto del formulario para guardar la información introducida por el usuario

```dart
onPressed: () => sendRegisterForm(context)
```
En el evento `onPressed` del botón *Continuar* se llama a la función `sendRegisterForm()` la cual valida el formulario de
registro y en caso de ser exitoso redirige a la página de perfil

Widgets/access_with_SM.dart
------
#### Formularios
```dart
onPressed: () => signInWithGoogle(context),
```
En el evento `onPressed` del botón *"Regístrate con Google* se llama a la función `signInWithGoogle()` la cual redirige 
al proceso de registro con Google y en caso de ser exitoso redirige al usuario a la página de perfil

#### Navegación
```dart
onPressed: () {
  context.pushReplacementNamed('login');
},
```
El método `context.pushReplacementNamed()` agrega una nueva página al stack de navegación y elimina la actual, es llamado 
en el evento `onPressed` del botón *Inicia sesión*
