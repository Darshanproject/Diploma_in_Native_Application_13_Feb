import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp1/Screens/Home.dart';

class MyTextfields extends StatefulWidget {
  const MyTextfields({super.key});

  @override
  State<MyTextfields> createState() => _MyTextfieldsState();
}

class _MyTextfieldsState extends State<MyTextfields> {
  bool _slected = true;
  final _fromkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Form(
          key: _fromkey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 15),
                child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enetere your name porperly';
                    }else{
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)
                    ),
                    hintText: "Name",
                    labelText: "Name",
                    suffixIcon: Icon(Icons.email)
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 15),
                child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enetere your name porperly';
                    }else{
                      return null;
                    }
                  },
                  obscureText: _slected,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)
                    ),
                    hintText: "Password",
                    labelText: "Password",
                    suffixIcon: _slected == true ?IconButton(onPressed: (){
                      setState(() {
                        _slected = false;
                      });
                    }, icon: Icon(Icons.visibility)):IconButton(onPressed: (){
                      setState(() {
                        _slected = true;
                      });
                    }, icon: Icon(Icons.visibility_off,color: Colors.green,))
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width - 40,
                child: ElevatedButton(onPressed: (){  
                  if (_fromkey.currentState!.validate()) {
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>const Home_Page()));
                  }
                }, child: Text("Login",style: TextStyle(
                  fontSize: 24,color: Colors.white
                ),),style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.amber)
                ),),
              )
            ],
          ),
        ),
      ),
    );
  }
}