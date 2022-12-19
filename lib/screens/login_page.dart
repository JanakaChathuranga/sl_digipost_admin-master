import 'package:flutter/material.dart';
import 'package:sl_digipost_admin/screens/main_page.dart';
import 'package:passwordfield/passwordfield.dart';
import 'package:colorful_safe_area/colorful_safe_area.dart';

class LoginPage extends StatelessWidget {
  String text;

  LoginPage(this.text, {super.key});

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
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'images/digipostlogo/logo6.png',
                  width: 150,
                  height: 150,
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Admin Pannel',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 28, fontStyle: FontStyle.italic,
                    color: Colors.black,
                    //fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 380,
                  color: Colors.white60,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'User Id',
                      hintText: 'Enter your User Id',
                      // validator: (value) => value.isEmpty ? 'Email can\'t be empty' : null
                      border: OutlineInputBorder(),
                      // filled: true,
                      // fillColor: Color(0xFFF1EEEE),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 380,
                  color: Colors.white60,
                  child: PasswordField(
                    passwordConstraint: r'.*[@$#.*].*',
                    inputDecoration: PasswordDecoration(),
                    hintText: 'Enter your password',
                    border: PasswordBorder(
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 92, 95, 98),
                        ),
                        // borderRadius: BorderRadius.circular(10),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        // borderRadius: BorderRadius.circular(10),
                        borderSide:
                        BorderSide(width: 2, color: Colors.red.shade200),
                      ),
                    ),
                    errorMessage:
                    'must contain special character either . * @ # \$',
                  ),
                  // decoration: InputDecoration(
                  //   labelText: 'Password',
                  //   hintText: 'Enter your password',
                  //   border: OutlineInputBorder(),
                  //   filled: true,
                  //   fillColor: Color(0xFFF1EEEE),
                ),
                SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/main');
                    },
                    child: Text('Login'),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        //side: BorderSide(width: 10,color: Colors.blue),
                        minimumSize: Size(250, 50),
                        padding: EdgeInsets.all(20),
                        primary: Colors.blue, //background
                        onPrimary: Colors.white,
                        elevation: 20,
                        //shadowColor: Colors.red,

                        textStyle: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold))),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don\'t have an account?'),
                    //SizedBox(width: 5,),
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/signup');
                        },
                        child: Text(
                          'Signup',
                          style: TextStyle(fontSize: 17),
                        ))
                  ],
                ),
                // SizedBox(
                //   height: 20,
                // ),
                // ElevatedButton(
                //     onPressed: () {
                //       Navigator.pop(context);
                //     },
                //     child: Text('Go to home'),
                //     style: ElevatedButton.styleFrom(
                //         shape: RoundedRectangleBorder(
                //             borderRadius: BorderRadius.circular(20)),
                //         //side: BorderSide(width: 10,color: Colors.blue),
                //         minimumSize: Size(100, 50),
                //         padding: EdgeInsets.all(20),
                //         primary: Colors.amber.shade400, //background
                //         onPrimary: Colors.white,
                //         elevation: 20,
                //         //shadowColor: Colors.red,

                //         textStyle:
                //             TextStyle(fontSize: 15, fontWeight: FontWeight.bold))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
