Register_car.dart
------
#### Manejo de estados
```dart
final registerCarProvider =
    StateProvider<RegisterCarController, RegisterCarState>((_) => RegisterCarController());
```
La variable `registerCarProvider` es una instancia de `StateProvider` la cual es creada con base en la clase 
`RegisterCarController` cuando se carga la página es usada para manejar el registro de automoviles

#### Actualización de la interfaz
```dart
void setTimeLineValue(double val) {
  value = val;
  setState(() {});
}
```
La función `setTimeLineValue()` se encarga de actualizar la interfaz para mostrar avance en el proceso de registro cuando se
completa un paso

```dart
void setVisibility() {
  visible = !visible;
  setState(() {});
}
```
La función `setVisibility()` actuliza la interfaz para mostrar los datos obtenidos desde una API sobre el VIN introducido
por el usuario

```dart
body: GestureDetector(
  onTap: () => FocusScope.of(context).unfocus(),
  /..../
);
```
En el evento `onTap` del widget `GestureDetector` se llama cuandoel usuario hace clic en la pantalla para desactivar el
teclado en plataformas móviles

#### Navegación
```dart
onPressed: () {
  context.pushReplacementNamed('profile');
},
```
El método `context.pushReplacementNamed()` agrega una nueva página al stack de navegación y elimina la actual, es llamado 
en el evento `onPressed` del botón *cancelar*

Wigets/car_data_box.dart
------
#### Formularios
```dart
onPressed: () => confirmCarData(context)
```
En el evento `onPressed` del botón *Continuar* se llama a la función `confirmCarData()` la cual registra los datos del 
vehículo a registrar después de que el usuario confirma que son correctos

```dart
onPressed: () {
  changeVisibility();
  updateTimeLine(1.5);
},
```
En el evento `onPressed` del botón *Corregir VIN* se llama a las funciones `changeVisibility()` y `updateTimeLine()` 
las cuales actualizan la interfaz para mostrar de nuevo el formulario de registro de vehículos

Wigets/register_car_form.dart
------
#### Formularios
```dart
onChanged: controller.onUniqueCodeChanged

onChanged: controller.onCarVINChanged
```
Las funciones `onUniqueCodeChanged` y `onCarVINChanged` son llamadas en el evento onChange de los campos de texto del formulario para guardar la información introducida por el usuario

```dart
onPressed: () {
    confirmForm(
        context,
        changeVisibility: changeVisibility,
        updateTimeLine: updateTimeLine,
    );
},
```
En el evento `onPressed` del botón *Continuar* se llama a la función `confirmForm()` la cual valida el formulario de
registro de vehículos y activa las funciones `changeVisibility()` y `updateTimeLine()` para actualizar la interfaz
