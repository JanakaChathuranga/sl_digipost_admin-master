import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:sl_digipost_admin/main.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  var scaffoldKey;

  @override
  Widget build(BuildContext context) {
    final User user = FirebaseAuth.instance.currentUser!;
    final uid = user.uid;
    log("Home page email: $user.email!");
    return Scaffold(
    //  resizeToAvoidBottomInset: false,
      //   backgroundColor: Color(0xFFE9E4F6),
      body: ColorfulSafeArea(
        color: Colors.indigoAccent,
        left: true,
        top: true,
        right: true,
        bottom: true,
        child: Center(
          child: Column(
            children: [
              // Container(
              //   width: double.infinity,
              //   height: 32,
              //   decoration: BoxDecoration(
              //     color: Color(0xFF5870CB),
              //   ),
              // ),
              Container(
                width: double.infinity,
                height: 45,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255,3,37,126),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        // color: Color.fromARGB(140, 233, 228, 245),
                      ),
                      child: IconButton(
                        icon: Icon(
                          Icons.home,
                          color: Colors.white,
                          size: 30,
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/main');
                        },
                      ),
                    ),
                    Text(
                      'Home',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),

                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        // color: Color.fromARGB(140, 233, 228, 245),
                      ),
                      child: IconButton(
                        icon: Icon(
                          Icons.logout,
                          color: Color(0xFFFFFFFF),
                          size: 30,
                        ),
                        onPressed: () => FirebaseAuth.instance.signOut(),
                      ),
                    ),
                  ],

                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),

                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Admin Pannel',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                        fontSize: 28,
                      color: Colors.black,
                 fontWeight: FontWeight.bold
                 //     fontStyle: FontStyle.,
                    ),
                  ),
                ),
              ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height - 150,

                decoration: BoxDecoration(
              //    color: Colors.red,
                ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Align(
                        child: ElevatedButton.icon(
                          icon: ImageIcon(
                            AssetImage('images/homepics/telco.png'),
                            color: Colors.black,
                            size: 50,
                          ),
                          label: Text('Telco'),
                          onPressed: () {
                            Navigator.pushNamed(context,'');
                          },
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(250, 60),
                            primary: Color.fromARGB(255,137, 196, 244),//background
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        child: ElevatedButton.icon(

                          icon: ImageIcon(
                            AssetImage('images/homepics/bank.jpg'),
                            color: Colors.black,
                            size: 50,
                          ),

                          label: Text('Banks'),
                          onPressed: () {
                            Navigator.pushNamed(context,'');
                          },
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(250, 60),
                            primary: Color.fromARGB(255,137, 196, 244),
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        child: ElevatedButton.icon(

                          icon: ImageIcon(
                            AssetImage('images/homepics/tower.png'),
                             color: Colors.black,

                            size: 50,
                          ),

                          label: Text('Electricity Board'),
                          onPressed: () {
                            Navigator.pushNamed(context,'');
                          },
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(250, 60),
                            primary: Color.fromARGB(255,137, 196, 244),
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        child: ElevatedButton.icon(

                          icon: ImageIcon(
                            AssetImage('images/homepics/water.png'),
                            color: Colors.black,
                            size: 50,
                          ),

                          label: Text('Water Board'),
                          onPressed: () {
                            Navigator.pushNamed(context,'');
                          },
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(250, 60),
                            primary: Color.fromARGB(255,137, 196, 244),
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        child: ElevatedButton.icon(

                          icon: ImageIcon(
                            AssetImage('images/homepics/finance.png'),
                            color: Colors.black,
                            size: 50,
                          ),

                          label: Text('Finance'),
                          onPressed: () {
                            Navigator.pushNamed(context,'');
                          },
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(250, 60),
                            primary: Color.fromARGB(255,137, 196, 244),
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        child: ElevatedButton.icon(

                          icon: ImageIcon(
                            AssetImage('images/homepics/insurance.jpg'),
                            color: Colors.black,
                            size: 50,
                          ),

                          label: Text('Insurance'),
                          onPressed: () {
                            Navigator.pushNamed(context,'');
                          },
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(250, 60),
                            primary: Color.fromARGB(255,137, 196, 244),
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                      ),
                  ],
              ),
            ),
            ),
                ],
    ),
      ),
      ),
      );
  }
}
