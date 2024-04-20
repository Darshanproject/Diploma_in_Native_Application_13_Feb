import 'dart:async';

import 'package:live/Const/export.dart';
import 'package:live/View/HomeScreenn/Homepage.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () => Get.offAll(()=>Home_Page()));
  }
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        color: red,
        // height: context.screenHeight,
        child: Lottie.asset(splash).box.height(context.screenHeight).width(context.screenWidth).make(),
      ),
    );
  }
}