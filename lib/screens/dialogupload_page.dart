import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:colorful_safe_area/colorful_safe_area.dart';

class DialogUploadPage extends StatefulWidget {
  const DialogUploadPage({Key? key}) : super(key: key);

  @override
  _DialogUploadPageState createState() =>
      _DialogUploadPageState();
}

class _DialogUploadPageState
    extends State<DialogUploadPage> {
  String? dropDownValue1;
  String? dropDownValue2;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  String dropdownvalue1 = 'Select Year';
  String dropdownvalue2 = 'Select Month';

  // List of items in our dropdown menu
  var items1 = [
    'Select Year',
    '2021',
    '2022',
    '2023',
    '2024',
    '2025',
  ];

  var items2 = [
    'Select Month',
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'Octomber',
    'November',
    'December',
  ];

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
                            size: 20,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        Text(
                          'Dialog',
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
                      height: 700,
                      decoration: BoxDecoration(
                        // color: Color(0xFFE9E4F5),
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Image.asset(
                                            'images/telcohomepics/dialog.png',
                                            width: 200,
                                            height: 100,
                                            fit: BoxFit.contain,
                                          ),
                              Align(
                                alignment: AlignmentDirectional(0, 0.76),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                                  child: Container(
                                    // width: 330,
                                    child: DropdownButton(
                                      value: dropdownvalue1,
                                      disabledHint: Text ("Select Year"),
                                      icon: const Icon(Icons.keyboard_arrow_down),
                                      items: items1.map((String items1) {
                                        return DropdownMenuItem(
                                          value: items1,
                                          child: Text(items1),
                                        );
                                      }).toList(),
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          dropdownvalue1 = newValue!;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                              ),
                              DropdownButton(
                                value: dropdownvalue2,
                                disabledHint: Text ("Select Month"),
                                icon: const Icon(Icons.keyboard_arrow_down),
                                items: items2.map((String items2) {
                                  return DropdownMenuItem(
                                    value: items2,
                                    child: Text(items2),
                                  );
                                }).toList(),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownvalue2 = newValue!;
                                  });
                                },
                        ),
                      ],
                    ),
                  ),
          ],
                        ),
                                            Align(
                                alignment: AlignmentDirectional(0, 0.76),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                                  child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.pushNamed(context, '');
                                      },
                                      child: Text('Upload'),
                                      style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(20)),
                                          //side: BorderSide(width: 10,color: Colors.blue),
                                          minimumSize: Size(250, 50),
                                          padding: EdgeInsets.all(20),
                                          primary: Colors.black26, //background
                                          onPrimary: Colors.white,
                                          elevation: 20,
                                          textStyle: TextStyle(
                                              fontSize: 15, fontWeight: FontWeight.bold))),
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
          ),
            );
  }
}