import 'package:auto_matic/config/config.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(31, 1, 185, 1),
        leading: Icon(Icons.logo_dev),
        title: Text("Auto-matic", style: TextStyle(color: Colors.white),),
      ),
      body: Scaffold(
        backgroundColor: Color.fromRGBO(224, 221, 207, 1),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color.fromRGBO(31, 1, 185, 1),
        child: Center(
          child: Text("Auto-matic", style: TextStyle(color: Colors.white),),
        ),
        height: 50,
      ),
    );
  }
}
