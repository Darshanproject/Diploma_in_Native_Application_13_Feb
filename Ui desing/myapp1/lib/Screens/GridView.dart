import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Gird_Screen extends StatefulWidget {
  const Gird_Screen({super.key});

  @override
  State<Gird_Screen> createState() => _Gird_ScreenState();
}

class _Gird_ScreenState extends State<Gird_Screen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 20,vertical: 30
          ),
          child: Container(
          child: GridView(
          
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 8,mainAxisSpacing:16 ),
            children: [
              Container(
                color: Colors.amber[100],
                child: Text("1"),
              ),

              Container(
                // color: Colors.amber[200],
                child: Card(
                  // margin: EdgeInsets.all(5),
                  semanticContainer: true,
                  
                  color: Colors.grey,
                  shadowColor: Colors.blue,
                  elevation:BorderSide.strokeAlignCenter,
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        child: Image.network("https://images.unsplash.com/photo-1532009877282-3340270e0529?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8c3RhY2t8ZW58MHx8MHx8fDA%3D",height: 80,),
                      ),
                      Text("Fancy Cake"),
                      // ElevatedButton(onPressed: (){}, child: Text("Add to cart"))
                      SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.blue ,
                            border: Border.all(
                              width: 2,
                              color: Colors.white
                            ),
                            borderRadius: BorderRadius.circular(12)
                          ),
                          
                          height: 20,
                          width: 80,
                          child: Center(child: Text("Add to cart")),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                color: Colors.amber[300],
                child: Text("3"),
              ),
              Container(
                color: Colors.amber[400],
                child: Text("4"),
              ),
              
              


            ],
             ),
          ),
        ),
      ),
    );
  }
}