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
                  color: Colors.black87,
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
                          color: Color(0xFFFFFFFF),
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
                  child: Text(
                    'Admin Pannel',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                        fontSize: 28,
                      color: Colors.black,
                      fontStyle: FontStyle.italic,
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
                        alignment: AlignmentDirectional(0, 0.05),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Container(
                            width: 250,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Color(0x484848),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 0,
                                  color: Color(0x33000000),
                                  offset: Offset(2, 2),
                                  spreadRadius: 4,
                                )
                              ],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row (
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                InkWell(
                                onTap: () {
                          Navigator.pushNamed(context,'/telcohome');
                          },
                            child: Image.asset(
                              'images/homepics/telco.png',
                              width: 100,
                              height: 100,
                              fit: BoxFit.contain,
                            ),
                                ),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context,'/telcohome');
                            },
                           child: Text(
                              'Telco',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Poppins',
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                      ),
                      ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, 0.05),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Container(
                            width: 250,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Color(0x484848),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 0,
                                  color: Color(0x33000000),
                                  offset: Offset(2, 2),
                                  spreadRadius: 4,
                                )
                              ],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row (
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                InkWell(
                                onTap: () {
                          Navigator.pushNamed(context,'/bankshome');
                          },
                            child: Image.asset(
                              'images/homepics/bank.jpg',
                              width: 100,
                              height: 100,
                              fit: BoxFit.contain,
                            ),
                                ),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context,'/bankshome');
                            },
                            child: Text(
                              'Banks',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Poppins',
                                fontSize: 16,
                              ),
                            ),
                          ),
                          ],
                        ),
                      ),
            ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, 0.05),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Container(
                            width: 250,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Color(0x484848),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 0,
                                  color: Color(0x33000000),
                                  offset: Offset(2, 2),
                                  spreadRadius: 4,
                                )
                              ],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row (
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                InkWell(
                                onTap: () {
                          Navigator.pushNamed(context,'');
                          },
                            child: Image.asset(
                              'images/homepics/electricity.png',
                              width: 100,
                              height: 100,
                              fit: BoxFit.contain,
                            ),
                                ),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context,'');
                            },
                            child: Text(
                              'Electricity \n Board',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Poppins',
                                fontSize: 16,
                              ),
                            ),
                          ),
                          ],
                        ),
                      ),
                      ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, 0.05),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Container(
                            width: 250,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Color(0x484848),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 0,
                                  color: Color(0x33000000),
                                  offset: Offset(2, 2),
                                  spreadRadius: 4,
                                )
                              ],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row (
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                InkWell(
                                onTap: () {
                          Navigator.pushNamed(context,'');
                          },
                            child: Image.asset(
                              'images/homepics/water.png',
                              width: 100,
                              height: 100,
                              fit: BoxFit.contain,
                            ),
                                ),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context,'');
                            },
                            child: Text(
                              'Water \n Board',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Poppins',
                                fontSize: 16,
                              ),
                            ),
                          ),
                          ],
                        ),
                      ),
                      ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, 0.05),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Container(
                            width: 250,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Color(0x484848),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 0,
                                  color: Color(0x33000000),
                                  offset: Offset(3, 2),
                                  spreadRadius: 4,
                                )
                              ],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row (
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                               InkWell(
                                onTap: () {
                          Navigator.pushNamed(context,'/financehome');
                          },
                            child: Image.asset(
                              'images/homepics/finance.png',
                              width: 100,
                              height: 100,
                              fit: BoxFit.contain,
                            ),
                               ),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context,'/financehome');
                            },
                            child: Text(
                              'Finance',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Poppins',
                                fontSize: 16,
                              ),
                            ),
                          ),
                          ],
                        ),
                      ),
                      ),
                      ),
                        Align(
                          alignment: AlignmentDirectional(0, 0.05),
                          child: Material(
                            color: Colors.transparent,
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Container(
                              width: 250,
                              height: 60,
                              decoration: BoxDecoration(
                                color: Color(0x484848),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 0,
                                    color: Color(0x33000000),
                                    offset: Offset(3, 2),
                                    spreadRadius: 4,
                                  )
                                ],
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row (
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  InkWell(
                                  onTap: () {
                            Navigator.pushNamed(context,'/insurancehome');
                            },
                                  child: Image.asset(
                                    'images/homepics/insurance.jpg',
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.contain,
                                  ),
                                  ),
                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(context,'/insurancehome');
                              },
                                  child: Text(
                                    'Insurance',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Poppins',
                                      fontSize: 16,
                                    ),
                                  ),
                            ),
                              ],
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
