import 'package:flutter/material.dart';

class BestGroceryScreen extends StatelessWidget {
  const BestGroceryScreen({Key? key}) : super(key: key);

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
            children: [
              //welcome text
              Text("Best Quality",style: TextStyle(fontSize: 31,fontWeight: FontWeight.w400,color: Colors.grey.shade500),),
              //title text
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Grocery",style: TextStyle(fontSize: 36,fontWeight: FontWeight.w800,color: Colors.green.shade800),),
                  SizedBox(width: 10,),
                  Text("Door to Door",style: TextStyle(fontSize: 31,fontWeight: FontWeight.w400,color: Colors.grey.shade500),),
                ],
              ),
              SizedBox(height: 30,),
              //image
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("lib/images/door_to_door_service.jpg"),fit: BoxFit.fill)
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
