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

Widgets/reset_service_pop_up.dart
------
#### Formularios
```dart
onPressed: () => resetService(context, reference),
```
En el evento `onPressed` del botón *Confirmar* se llama al método `resetService()` el cual actualiza la base de datos para
reflejar que se acaba de realizar servicio al automóvil

#### Navegación
```dart
onPressed: () => context.pop()
```
En el evento `onPressed` del botón *Cancelar* se llama al metodo `context.pop()` el cual cierra el cuadro de diálogo

Widgets/RPM_KPM.dart
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
Al cargarse el widget se hace uso de un widget de tipo `StreamBuilder` para mostrar en pantalla la información sobre la
velocidad y revoluciones por minuto del vehículo

Widgets/temp_battery.dart
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
Al cargarse el widget se hace uso de un widget de tipo `StreamBuilder` para mostrar en pantalla la información sobre el
estado de la batería y la temperatura del refrigerante del motor

Widgets/services_card.dart
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
Al cargarse el widget se hace uso de un widget de tipo `StreamBuilder` para mostrar en pantalla la información sobre el
estado del servicio del vehículo

```dart
ConvertDate.getPer(data['lastServiceDate'])

ConvertDate.getFormatedDate(data['lastServiceDate'])

ConvertDate.getNextServiceDate(data['lastServiceDate'])

ConvertDate.daysBetween(data['lastServiceDate']).toString()
```
Al cargarse el widget se hace uso de los metodos dentro de la clase `ConvertDate` para mostrar la fecha el último servicio, 
la fecha del siguiente servicio, el porcentaje de días restantes hasta el siguiente servicio y los días restantes

#### Navegación
```dart
onPressed: () =>showResetServicePopUp(context, realtimeReference!),
```
En el evento `onPressed` del botón *Reiniciar servicio* se llama a la función `showResetServicePopUp()` el cual muestra el cuadro de diálogo para confirmar el reinicio del servicio del vehículo

Widgets/update_alias_pop_up.dart
------
#### Manejo de estados
```dart
final updateDeleteCarProvider =
  StateProvider<UpdateStaticController, UpdateStaticState>((_) => UpdateStaticController());
```
La variable `updateDeleteCarProvider` es una instancia de `StateProvider` la cual es creada con base en la clase 
`UpdateStaticController`, es creada cuando se carga el widget para manejar la actualización de los datos del vehículo

#### Formularios
```dart
onChanged: controller.onAliasChanged
```
La función `onAliasChanged` es llamada en el evento onChange del campo de texto del formulario para guardar la información introducida por el usuario

```dart
onPressed: () => sendAliasUpdate(context, reference)
```
En el evento `onPressed` del botón *Confirmar* se llama al método `sendAliasUpdate()` el cual actualiza el apodo del vehículo en la base de datos

#### Navegación
```dart
onPressed: () => context.pop()
```
En el evento `onPressed` del botón *Cancelar* se llama al metodo `context.pop()` el cual cierra el cuadro de diálogo
