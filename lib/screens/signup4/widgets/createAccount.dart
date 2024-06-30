import 'package:auto_matic/config/config.dart';

/// Sección de creación de cuenta
class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Crear cuenta', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Config.secondColor)),
        const SizedBox(height: 20),
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
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child:
                      ElevatedButton(
                        onPressed: () {
                          // Tu lógica aquí
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Config.confirmGreen,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text(
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