import 'package:auto_matic/config/config.dart';
import 'package:flutter/cupertino.dart';
/// Sección de creación de cuenta
class CreateAccountSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Crear cuenta', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Config.secondColor)),
        SizedBox(height: 20),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),

          child: Column(
            children: [
              Row(
                children: [
                  Expanded  (
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
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child:
                      ElevatedButton(
                        onPressed: () {
                          // Tu lógica aquí
                        },
                        style: ElevatedButton.styleFrom(

                          backgroundColor: Config.sixColor, // Cambia el valor hexadecimal aquí
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
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}