import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_blog/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    //navigateToHomePage();
    super.initState();
  }
  // void navigateToHomePage(){
  //      Future.delayed( Duration(seconds: 5), (){
  //        UtilFunctions.navigateTo(context, HomePage());
  //      });
  // }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromARGB(3, 9, 23, 1),
      body: Container(
        width: double.infinity,
        child: Stack(
          children: <Widget>[
            Positioned(
                top: 65,
                child: BounceInDown(
                  child: Container(
                      width: width,
                      height: 850,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage('assets/images/sri lanka.jpg'),
                        fit: BoxFit.cover,
                      ))),
                  duration: Duration(milliseconds: 2000),
                )),
            Positioned(
                top: -50,
                left: 0,
                child: Column(
                  children: [
                    Container(
                        width: width,
                        height: 400,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage('assets/images/one.png'),
                          fit: BoxFit.contain,
                        ))),
                  ],
                )),
            Positioned(
                top: -100,
                left: 0,
                child: Container(
                    width: width,
                    height: 400,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/images/one.png'),
                      fit: BoxFit.cover,
                    )))),
            Positioned(
                top: -150,
                left: 0,
                child: Container(
                    width: width,
                    height: 400,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/images/one.png'),
                      fit: BoxFit.cover,
                    )))),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  FadeInUp(
                    child: const Center(
                      child: Text(
                        "TRAVEL BLOG",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 50,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  FadeInUp(
                    child: Center(
                      child: Text(
                        "AV News",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.5),
                          fontSize: 40,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  FadeInUp(
                    child: const Center(
                      child: Text(
                        "@Sasanka Vitharana",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
