import 'package:auto_matic/config/config.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: LayoutBuilder(
            builder: (context, constraints) {
              return Row(
                children: [
                  // Sección de creación de cuenta
                  Expanded(
                    flex: 2,
                    child: _CreateAccountSection(),
                  ),
                  SizedBox(width: 40),
                  // Sección de acceso con redes sociales
                  Expanded(
                    flex: 1,
                    child: _AccessWithSocialMediaSection(),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
>>>>>>>> origin/AMinjarez:lib/screens/singup4/singup4.dart

/// Sección de creación de cuenta
class CreateAccountSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Crear cuenta', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Config.secondColor)),
        SizedBox(height: 20),
        Container(
          decoration: BoxDecoration(
            color: Config.firstColor,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
          ),
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Nombre',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Apellidos',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Correo Electrónico',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Contraseña',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            // Tu lógica aquí
          },
          style: ElevatedButton.styleFrom(
<<<<<<<< HEAD:lib/screens/signup4/signup4.dart
            backgroundColor: Config.secondColor, // Cambia el valor hexadecimal aquí
========
            backgroundColor: Config.fifthColor, // Cambia el valor hexadecimal aquí
>>>>>>>> origin/AMinjarez:lib/screens/singup4/singup4.dart
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Text(
            'Continuar',
            style: TextStyle(
              color: Config.firstColor, // Cambia el valor hexadecimal aquí
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}

// Sección de acceso con redes sociales
class AccessWithSocialMediaSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Accede con', style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold, color: Config.secondColor)),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 60,
              height: 60,
              color: Colors.blue,
              child: Center(child: Text('Redes Sociales')),
            ),
            SizedBox(width: 20),
            Container(
              width: 60,
              height: 60,
              color: Colors.green,
              child: Center(child: Text('Google')),
            ),
          ],
        ),
      ],
    );
  }
}

