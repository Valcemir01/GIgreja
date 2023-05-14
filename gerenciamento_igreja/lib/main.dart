import 'package:flutter/material.dart';
import 'package:gerenciamento_igreja/app/stores/page_store.dart';
import 'package:gerenciamento_igreja/tela_resposivel.dart';
import 'package:get_it/get_it.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

import 'app/paginas/tela_login.dart';

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
      theme: ThemeData.dark().copyWith(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xff2d5986),
        ),
        scaffoldBackgroundColor: const Color(0xff2d5986),

      ),
      home: const TelaResponsivel(),
      // home: TelaLogin(),
    );
  }
}
