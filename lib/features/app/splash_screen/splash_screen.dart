import 'package:flutter/material.dart';

class SplashSreen extends StatefulWidget {
  final Widget? child;
  const SplashSreen({super.key, this.child});

  @override
  State<SplashSreen> createState() => _SplashSreenState();
}

class _SplashSreenState extends State<SplashSreen> {

  @override
  void initState(){
    Future.delayed(Duration(seconds: 3),(){
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> widget.child!), (route) => false);
    });

    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Kantinir", style: TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.bold,),)),
    );
  }
}