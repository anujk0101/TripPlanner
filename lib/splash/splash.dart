import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:find_tour/login_signup/login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../home_page/first_page.dart';

class SplashSc extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => _SplashScState();

}

class _SplashScState extends State<StatefulWidget>{
  bool? check;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //Timer(Duration(seconds: 4),())
    Timer(Duration(seconds: 4),() async {

      var prefs=await SharedPreferences.getInstance();
       check=prefs.getBool(LoginBody.logedInRecordCheck);
      goToPage();
    },);
  }

  void goToPage()
  {
    if(check==null || check==false)
      {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){return LoginPage();}));
      }
    else
      {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){return FirstPage();}));
      }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(color: Colors.white),
        child: Image.asset("asset/logo/logo_tour.png",height: 200,width: 200,),
      ),
    );
  }

}

