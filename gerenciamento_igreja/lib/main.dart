import 'package:flutter/material.dart';
import 'package:gerenciamento_igreja/app/stores/page_store.dart';
import 'package:gerenciamento_igreja/tela_resposivel.dart';
import 'package:get_it/get_it.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await InicializaParse();
  SetupLocators();
  runApp(const MyApp());
}

void SetupLocators() {
  GetIt.I.registerSingleton(PageStore());
}

Future<void> InicializaParse() async {
  await Parse().initialize(
    'nDK7eGfJ1LE06OY9YXeNrpDBVh66BIAFY6YziqKG',
    'https://parseapi.back4app.com/',
    clientKey: 'xRdgGS5Pog5i0FIjtvPkfjpY14p3Ka43llVsDGGb',
    autoSendSessionId: true,
    debug: true,
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gerenciamento Igreja',
      theme: ThemeData(
       // textTheme: TextTheme(displayMedium: TextStyle(color: Colors.red)),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: const AppBarTheme(
          color: Colors.indigo,
          elevation: 2,
          titleTextStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 26,
          ),
        ),
      ),
      home: const TelaResponsivel(),
      // home: TelaLogin(),
    );
  }
}
