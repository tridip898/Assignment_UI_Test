import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          padding: EdgeInsets.only(top: 60,left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //welcome text
              Text("Welcome to",style: TextStyle(fontSize: 31,fontWeight: FontWeight.w400,color: Colors.grey.shade500),),
              //title text
              Row(
                children: [
                  Text("U",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w800,color: Colors.green.shade800),),
                  Text("Bazar",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700,color: Colors.green.shade700,fontFamily: "Times New Roman"),),
                  SizedBox(width: 10,),
                  Text("Application",style: TextStyle(fontSize: 31,fontWeight: FontWeight.w400,color: Colors.grey.shade500),),
                ],
              ),
              SizedBox(height: 30,),
              //image
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("lib/images/welcome_screen.jpg"),fit: BoxFit.fill)
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
