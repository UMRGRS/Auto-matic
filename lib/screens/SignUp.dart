import 'package:auto_matic/config/config.dart';

class SingUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Auto-matic'),
          actions: [
            TextButton(
              onPressed: () {},
              child: Text('Cancelar', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),


        body: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Introduce el VIN del vehiculo',
                      style: TextStyle(fontSize: 18),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'xxxx-xxxx-xxxx-xxxx',
                        suffixText: '#FFFFFF',
                      ),
                    ),
                    SizedBox(height: 16),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.25,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('Continuar'),
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    Center(
                      child: Text(
                        '#208454',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          StepWidget(
                            number: '1',
                            title: 'Codigo unico',
                          ),
                          StepWidget(
                            number: '2',
                            title: 'Datos del vehiculo',
                            isActive: true,
                            activeCode: 'BAZ06B',
                          ),
                          StepWidget(
                            number: '3',
                            title: 'Datos del usuario',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: Text('Nombre de la empresa'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class StepWidget extends StatelessWidget {
  final String number;
  final String title;
  final bool isActive;
  final String? activeCode;

  StepWidget({
    required this.number,
    required this.title,
    this.isActive = false,
    this.activeCode,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 12,
          backgroundColor: Colors.grey[300],
          child: Text(number, style: TextStyle(color: Colors.black)),
        ),
        SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: TextStyle(color: Colors.black)),
            if (isActive && activeCode != null)
              Container(
                color: Colors.red,
                padding: EdgeInsets.symmetric(horizontal: 4),
                child: Text(
                  activeCode!,
                  style: TextStyle(color: Colors.white),
                ),
              ),
          ],
        ),
        if (number != '3') ...[
          SizedBox(width: 8),
          Icon(Icons.arrow_forward, color: Colors.black),
        ],
      ],
    );
  }
}