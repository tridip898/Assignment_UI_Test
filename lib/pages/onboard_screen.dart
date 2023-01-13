import 'package:assignment_ui_test/pages/best_grocery_screen.dart';
import 'package:assignment_ui_test/pages/delivery_screen.dart';
import 'package:assignment_ui_test/pages/home_page.dart';
import 'package:assignment_ui_test/pages/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:get/get.dart';

class OnBoardcreen extends StatefulWidget {
  const OnBoardcreen({Key? key}) : super(key: key);

  @override
  State<OnBoardcreen> createState() => _OnBoardcreenState();
}

class _OnBoardcreenState extends State<OnBoardcreen> {
  //controller to keep track of which page we are on
  PageController _controller = PageController();

  //keep track of if we are not on the last page or not
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            PageView(
              controller: _controller,
              //check the last page or not
              onPageChanged: (index) {
                setState(() {
                  onLastPage = (index == 2);
                });
              },
              children: [
                WelcomeScreen(),
                DeliveryScreen(),
                BestGroceryScreen()
              ],
            ),
            Container(
              alignment: Alignment(0, 0.85),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  //skip text button
                  TextButton(
                      onPressed: () {
                        _controller.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeIn);//if click go to the next page
                      },
                      child: Text(
                        "Skip",
                        style: TextStyle(fontSize: 18, color: Colors.grey),
                      )),
                  //page indicator
                  SmoothPageIndicator(
                      controller: _controller, // PageController
                      count: 3,
                      effect: ExpandingDotsEffect(
                          activeDotColor: Colors.green,
                          spacing: 5,
                          dotWidth: 14,
                          dotHeight: 14,
                          strokeWidth: 2), // your preferred effect
                      onDotClicked: (index) {}),

                  //if we are in last page shows Done button otherwise shows Next button
                  onLastPage
                      ? GestureDetector(
                          onTap: () {
                            Get.to(()=>HomePage());//we can move home page if we are in lastPage
                          },
                          child: Text(
                            "Done",
                            style: TextStyle(fontSize: 18, color: Colors.grey),
                          ),
                        )
                      : GestureDetector(
                    onTap: () {
                      _controller.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeIn);
                    },
                    child: Text(
                      "Next",
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
