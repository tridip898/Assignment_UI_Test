import 'package:flutter/material.dart';

class DeliveryScreen extends StatelessWidget {
  const DeliveryScreen({Key? key}) : super(key: key);

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
              //get text
              Text("Get",style: TextStyle(fontSize: 31,fontWeight: FontWeight.w400,color: Colors.grey.shade500),),
              //delivery text
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Fast",style: TextStyle(fontSize: 37,fontWeight: FontWeight.w800,color: Colors.green.shade800),),
                  SizedBox(width: 10,),
                  Text("Delivery Service",style: TextStyle(fontSize: 31,fontWeight: FontWeight.w400,color: Colors.grey.shade500),),
                ],
              ),
              SizedBox(height: 30,),
              //image
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("lib/images/delivery.webp"),fit: BoxFit.fill)
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
