import 'package:auto_matic/app/UI/global_widgets/dialogs/progress_dialog.dart';
import 'package:auto_matic/app/config/config.dart';
import 'package:auto_matic/app/data/data_source/remote/failure_codes_api_call.dart';

Future<void> showFailureCodeDefinition(
    BuildContext context, String code) async {
  ProgressDialog.show(context);
  final codeData = await getFailureCodeData(code);
  context.pop();
  print(codeData.error);
  if (codeData.error != null) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Error"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text("Sucedio un error, intenta mas tarde"),
              CupertinoButton(
                onPressed: () => context.pop(),
                child: Container(
                  width: 35,
                  height: 35,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.red),
                  child: const Icon(
                    Icons.close,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        content: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Código: ${code}",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Definición: ${codeData.definition}",
                style: TextStyle(fontSize: 13),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Posibles causas",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 400,
                width: 400,
                child: ListView.builder(
                  itemCount: codeData.causes!.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Container(
                        width: 35,
                        height: 35,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.red),
                        child: Text(
                          "${index + 1}",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                      title: Text("${codeData.causes![index]}"),
                    );
                  },
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: CupertinoButton(
                  onPressed: () => context.pop(),
                  child: Container(
                    width: 35,
                    height: 35,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.red),
                    child: const Icon(
                      Icons.close,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
