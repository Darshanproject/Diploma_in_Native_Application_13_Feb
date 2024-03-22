import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/Screen/Home.dart';

class From_Screen extends StatefulWidget {
  const From_Screen({super.key});

  @override
  State<From_Screen> createState() => _From_ScreenState();
}

class _From_ScreenState extends State<From_Screen> {
  final _fromkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.amber,Colors.pink,Colors.red,Colors.purple,Colors.green,Colors.blue],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft
            )
          ),
        // color: Colors.amber,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 20),
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(14, 0, 0, 0)
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80,vertical: 30),
              child: Form(
                key: _fromkey,
                child: Column(
                  children: [
                    TextFormField(
                      validator: (value) {
                        if (value != null && value.isEmpty) {
                            return 'Please enter name properly';
                        }else{
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 10,
                            color: Colors.black
                          ),
                          borderRadius: BorderRadius.circular(12)
                        ),
                        // errorBorder: OutlineInputBorder(
                        //   borderRadius: BorderRadius.circular(24),
                        //   borderSide: BorderSide(
                        //     color: Colors.pink
                        //   )
                        // ),
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "Username MobileNumber Email",
                        labelText: "Username"
                      ),
                    ),
                    // Spacer(),
                    SizedBox(
                      height: 50,
                    ),
                    GestureDetector(
                      onTap: () {
                        if (_fromkey.currentState!.validate()) {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                        }
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius:BorderRadius.circular(24) ,
                          color: Colors.blue
                        ),
                        height: 50,
                        width: MediaQuery.of(context).size.width - 120,
                        // color: Colors.blue,
                        child: Align(
                          alignment: Alignment.center,
                          child: Text("Login",style: TextStyle(
                            fontSize: 24
                          ))),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
              )),
    );
  }
}