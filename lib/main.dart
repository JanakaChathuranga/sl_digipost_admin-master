import 'package:flutter/material.dart';

import 'screens/home_page.dart';
import 'screens/login_page.dart';
import 'screens/main_page.dart';
import 'screens/telcohome_page.dart';
import 'screens/bankshome_page.dart';
import 'screens/insurancehome_page.dart';
import 'screens/financehome_page.dart';
import 'screens/dialogupload_page.dart';

void main() => runApp( MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // locale: //DevicePreview.locale(context),
      // builder: DevicePreview.appBuilder,
      title: 'Home Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Home Page'),
      routes: <String, WidgetBuilder>{
        '/login': (context) => LoginPage(""),
        '/main': (context) => MainPage(),
        '/telcohome': (context) => TelcoHomePage(),
        '/bankshome': (context) => BanksHomePage(),
        '/insurancehome': (context) => InsuranceHomePage(),
        '/financehome': (context) => FinanceHomePage(),
        '/dialogupload': (context) => DialogUploadPage(),
      },
    );
  }
}
