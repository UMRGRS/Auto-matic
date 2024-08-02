Vehicle_RD.dart
------
#### Navegación
```dart
onPressed: () {
  context.pushReplacementNamed('profile');
},
```
El método `context.pushNamed()` agrega una nueva página al stack de navegación, es llamado en el evento `onPressed` del botón 
*Perfil*

```dart
onPressed: () async {
  ProgressDialog.show(context);
  await sessionProvider.read.signOut();
  Navigator.pop(context);
  context.go("/login");
},
```
En el evento `onPressed` del botón *Cerrar sesión* es una función asíncrona llama a la función `signOut()` del controlador 
de sesión, espera hasta que se complete el proceso para llamar al método `context.go()` el cual elimina todas las páginas
del stack y las remplaza por la indicada

Widgets/code_definition_pop_up.dart
------
#### Navegación
```dart
onPressed: () => context.pop()
```
En el evento `onPressed` del botón *Cerrar* se llama al metodo `context.pop()` el cual cierra el cuadro de diálogo

Widgets/delete_car_pop_up.dart
------
#### Formularios
```dart
onPressed: () => deleteCarDocuments(context, references)
```
En el evento `onPressed` del botón *Confirmar* se llama al metodo `deleteCarDocuments()` el cual elimina de la base de datos
todos los documentos relacionados con el vehículo actual

#### Navegación
```dart
onPressed: () => context.pop()
```
En el evento `onPressed` del botón *Cancelar* se llama al metodo `context.pop()` el cual cierra el cuadro de diálogo

Widgets/failure_codes_card.dart
------
#### Widgets
```dart
return StreamBuilder(
  stream: stream,
  builder: (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
    /..../
  }
);
```
Al cargarse el widget se hace uso de un widget de tipo `StreamBuilder` para mostrar en pantalla los códigos de falla actuales
del vehículo

```dart
Widget showFailureCodesList(List<dynamic> failureCodes) {
  /..../
}
```
Al cargarse el widget se hace uso de la función `showFailureCodesList()` para determinar si el vehículo tiene registrado
algún código de falla y construir la interfaz en consecuencia 

#### Navegación
```dart
onPressed: () async => await showFailureCodeDefinition(context, failureCodes[index]),
```
En el evento `onPressed` del botón *Ver definición* se llama al función asíncrona `showFailureCodeDefinition()` la cual 
muestra un cuadro de diálogo con la información relevante del código de falla seleccionado
