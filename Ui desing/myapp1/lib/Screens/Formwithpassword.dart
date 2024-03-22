import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Form_With_Password extends StatefulWidget {
  const Form_With_Password({super.key});

  @override
  State<Form_With_Password> createState() => _Form_With_PasswordState();
}

class _Form_With_PasswordState extends State<Form_With_Password> {
  final _fromkey = GlobalKey<FormState>();
  bool _selcted = false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.amber,Colors.blue,Colors.grey,Colors.green,Colors.pink],
          begin:Alignment.bottomCenter,
          end: Alignment.topCenter 
          )
        ),
        child: Center(child: Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(48, 0, 0, 0),
            borderRadius: BorderRadius.circular(24),
            boxShadow: [
              BoxShadow(
                blurRadius: 25,
                blurStyle: BlurStyle.outer,
                offset: Offset(3, 3.9),
                // spreadRadius: 5
                color: Colors.purple,
                spreadRadius: 10
              )
            ]
          ),
          height: MediaQuery.of(context).size.height / 2.5,
          width: MediaQuery.of(context).size.width - 40,
           child: Form(
            key: _fromkey,
            child:
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
             child: Column(
              children: [
                TextFormField(
                  validator: (value) {
                    if (value != null && value.isEmpty) {
                        return 'Please your name';
                    }else{
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 5
                      ),
                      borderRadius: BorderRadius.circular(24)
                    ),
                    hintText: "name",
                    fillColor: Colors.grey[100],
                    filled: true,
                  ),
                  
                ),
                SizedBox(
                  height: 25,
                ),
                TextFormField(
                  validator: (value) {
                    if (value != null && value.isEmpty) {
                      return "Enter your password";
                    }else{
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 5
                      ),
                      borderRadius: BorderRadius.circular(24)
                    ),
                    hintText: "password",
                    fillColor: Colors.grey[100],
                    filled: true,
                  ),
                  
                ),
                SizedBox(
                  height: 25,
                ),
               Row(
                children: [
                   Checkbox(value: _selcted, onChanged: (bool? newvalue){
                  setState(() {
                    _selcted = newvalue!;
                  });
                }),
                Text("Terms and condtions")
                ],
               ),
                Spacer(),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 240,
                  child: ElevatedButton(onPressed: _selcted == true?(){
                    if (_fromkey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text("Login Successfully"),backgroundColor: Colors.green,));
                    }
                  }: (){
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Please Selecte terms and condtion"),backgroundColor: Colors.red,));
                  }, child: Text("Login")),
                )
              ],
                       ),
           )),
        )),
      )
    );
  }
}