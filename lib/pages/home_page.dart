import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //index for bottom navigation bar
  int _currentIndex=0;
  //state management for change index and used setState
  void changeIndex(int index){
    setState(() {
      _currentIndex=index;
    });
  }

  //list for category
  List cat=[
    ["All","lib/icons/all.png"],
    ["Fruits","lib/icons/fruit.png"],
    ["Vegetable","lib/icons/vegetable.png"],
    ["Fish","lib/icons/fish.png"],
  ];

  //list for scrollable list
  List lst=[
    ["lib/images/fruit_veg.jpg","Fruit and Vegetable"],
    ["lib/images/grocery_staples.jpg","Grocery and Staples"],
    ["lib/images/household_needs.jpg","Household Needs"],
    ["lib/images/men_women.png","Mens and Womens Wear"],
    ["lib/images/foot_wear.jpg","Foot Wear"],
  ];

  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        //appbar
        appBar: AppBar(
          leading: Icon(Icons.menu_rounded,size: 30,),
          backgroundColor: Colors.green.shade800,
          title: Text("UBazar",style: TextStyle(fontSize: 28),),
          centerTitle: true,
          actions: [
            Icon(Icons.search,size: 35,),
            SizedBox(width: 5,),
            Icon(Icons.shopping_cart_outlined,size: 28,),
            SizedBox(width: 5,),
          ],
        ),
        //bottom nav bar
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          iconSize: 34,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.green,
          showUnselectedLabels: true,
          showSelectedLabels: true,
          selectedFontSize: 18,
          unselectedFontSize: 18,
          currentIndex: _currentIndex,
          onTap: changeIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: "Home",backgroundColor: Colors.white),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_checkout_sharp),label: "Cart"),
            BottomNavigationBarItem(icon: Icon(Icons.favorite_border_rounded),label: "Favourite"),
            BottomNavigationBarItem(icon: Icon(Icons.person_outline_rounded),label: "Me"),
          ],
        ),
        body: Container(
          height: height,
          width: width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //top image
              Container(
                height: 130,
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(image: AssetImage("lib/images/grocery.jpg"),fit: BoxFit.cover)
                ),
              ),

              //grocery category
              Container(
                height: 130,
                //used listview.builder for multiple list without write code again and again
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: cat.length,
                    itemBuilder: (_,index){
                  return Container(
                    margin: EdgeInsets.only(left: 13),
                    child: Column(
                      children: [
                        Container(
                          height: 85,
                          width: 85,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.shade300.withOpacity(0.5),
                                    blurRadius: 08,
                                    spreadRadius: 5
                                )
                              ]
                          ),
                          padding: EdgeInsets.all(15),
                          child: Image.asset(cat[index][1]),//get image from cat List and its index is 0
                        ),
                        SizedBox(height: 10,),
                        Text(cat[index][0],style: TextStyle(fontSize: 17),)//get category name from cat List and its index is 0
                      ],
                    ),
                  );
                }),
              ),

              //scrollable list
              Expanded(
                //used listview.builder for multiple list without write code again and again
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: lst.length,
                    itemBuilder: (_,index){
                  return Container(
                    height: 110,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade500.withOpacity(0.5),
                              blurRadius: 5,
                              spreadRadius: 3
                          )
                        ]
                    ),
                    padding: EdgeInsets.only(top: 15,bottom: 15),
                    child: Row(
                      children: [
                        //list image
                        Container(
                          height: 110,
                          width: 90,
                          decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage(lst[index][0]),fit: BoxFit.fill)//get image from 'lst' List and its index is 0
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //category name
                            Text(lst[index][1],style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500),), //get name from 'lst' List and its index is 1
                            SizedBox(height: 3,),
                            Text("Lorem ipsum diord sit amit,",style: TextStyle(fontSize: 18,color: Colors.grey.shade600),),
                            SizedBox(height: 3,),
                            Text("sjjrk aosjet constectia adiposimg",style: TextStyle(fontSize: 18,color: Colors.grey.shade600),),
                          ],
                        ),
                        Expanded(child: Container()),
                        //arrow icons
                        Icon(Icons.arrow_forward_ios,size: 38,color: Colors.green.shade700,)
                      ],
                    ),
                  );
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
