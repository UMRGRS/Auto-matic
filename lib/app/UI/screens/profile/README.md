Profile.dart
------
#### Navegación
```dart
onPressed: () {
  context.pushNamed('register_car');
},
```
El método `context.pushNamed()` agrega una nueva página al stack de navegación, es llamado en el evento `onPressed` del botón
*Añadir vehículo*

#### Manejo de sesiones
```dart
onPressed: () async {
  ProgressDialog.show(context);
  await sessionProvider.read.signOut();
  Navigator.pop(context);
  context.go("/login");
},
```
En el evento `onPressed` del botón *Cerrar sesión* es una función asíncrona llama a la función `signOut()` del controlador 
de sesión y espera hasta que se complete el proceso para llamar al método `context.go()` el cual elimina todas las páginas
del stack y las remplaza por la indicada

#### Widgets
```dart
Widget showAddCar(BuildContext context) {
  return kIsWeb
    ? Expanded(
      child: Container(/..../),
      )
  : const SizedBox.shrink();
}
```
La función `showAddCar` se llama al cargarse la página, y muestra el botón *Añadir vehículo* dependiendo de la plataforma en
que nos encontremos

Widgets/update_name_pop_up.dart
------
#### Manejo de estados
```dart
final updateDisplayNameProvider =
    StateProvider<UpdateProfileController, UpdateProfileState>((_) => UpdateProfileController());
```
La variable `updateDisplayNameProvider` es una instancia de `StateProvider` la cual es creada con base en la clase 
`UpdateProfileController`, cuando se carga la página es usada para manejar la actualización del perfil del usuario
guardando las variables involucradas

#### Formularios
```dart
onChanged: controller.onNameChange

onChanged: controller.onLastnameChange
```
Las funciones `onNameChange` y `onLastnameChange` son llamados en el evento onChange de los campos de texto del formulario
para guardar la información introducida por el usuario

```dart
onPressed: () => updateDisplayName(context),
```
En el evento `onPressed` del botón *Confirmar* se llama a la función `updateDisplayName()` la cual valida el formulario de
actualización del nombre de usuario y en caso de ser exitoso muestra un mensaje indicándolo

#### Navegación
```dart
onPressed: () => context.pop()
```
En el evento `onPressed` del botón *Cancelar* se llama al metodo `context.pop()` el cual cierra el cuadro de diálogo
