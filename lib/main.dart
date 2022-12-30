import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sl_digipost_admin/screens/loginWidget.dart';

import 'screens/home_page.dart';
import 'screens/main_page.dart';
import 'screens/signup_page.dart';
import 'screens/telcohome_page.dart';
import 'screens/bankshome_page.dart';
import 'screens/insurancehome_page.dart';
import 'screens/financehome_page.dart';
import 'screens/dialogupload_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(MyApp());
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // locale: //DevicePreview.locale(context),
      // builder: DevicePreview.appBuilder,
      title: '',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Test(),
      routes: <String, WidgetBuilder>{
        '/login2': (context) => loginWidget(),
        '/signup': (context) => SignUp(),
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
class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)=> Scaffold(
    body: StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if(snapshot.hasData){
          final user = FirebaseAuth.instance.currentUser!;
          log("Main dart email: $user.email!");
          return const MainPage();
        }else{
          log("Main dart : Logging failed!");
          return const loginWidget();
        }

      }
    ),
  );
}
