import 'package:flutter/material.dart';
import 'package:colorful_safe_area/colorful_safe_area.dart';

class InsuranceHomePage extends StatefulWidget {
  const InsuranceHomePage({Key? key}) : super(key: key);

  @override
  _InsuranceHomePageState createState() => _InsuranceHomePageState();
}

class _InsuranceHomePageState extends State<InsuranceHomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ColorfulSafeArea(
        color: Colors.indigoAccent,
        left: true,
        top: true,
        right: true,
        bottom: true,
        child: Center(
        key: scaffoldKey,
        // backgroundColor: Color(0xFFE9E4F5),
        child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
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
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Color(0xFFFFFFFF),
                      size: 25,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Text(
                    'Insurance',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 50),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
              child: Container(
                width: double.infinity,
                height: 600,
                decoration: BoxDecoration(
                  // color: Color(0xFFE9E4F5),
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
                          child: Image.asset(
                            'images/insurancehomepics/janashakthi.png',
                            width: 0,
                            height: 50,
                            fit: BoxFit.contain,
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
                          child: Image.asset(
                            'images/insurancehomepics/ceylinco.png',
                            width: 50,
                            height: 50,
                            fit: BoxFit.contain,
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
                          child: Image.asset(
                            'images/insurancehomepics/union.png',
                            width: 50,
                            height: 50,
                            fit: BoxFit.contain,
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
                          child: Image.asset(
                            'images/insurancehomepics/peoples2.png',
                            width: 50,
                            height: 50,
                            fit: BoxFit.contain,
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
                          child: Image.asset(
                            'images/insurancehomepics/allianz.png',
                            width: 50,
                            height: 50,
                            fit: BoxFit.contain,
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
        ),
    );
  }
}
