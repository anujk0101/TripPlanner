import 'package:find_tour/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:find_tour/login_signup/signup_page.dart';
import 'package:find_tour/widgets/widget_design.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../home_page/first_page.dart';
import '../home_page/home_page.dart';
import '../splash/splash.dart';
import 'package:find_tour/login_signup/forgot_password.dart';

class LoginPage extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor: Colors.black,
        //title: Text("Login"),
      ),
      body: LoginBody(),
    );
  }
}

class LoginBody extends StatefulWidget {
  static const String logedInRecordCheck="IsLoggedIn";
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody>
{
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }


  int flag=0;
  TextEditingController teEmailController=TextEditingController();
  TextEditingController tePassController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(left: 20,right: 20),
      child: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Login",style: TextStyle(color: Colors.white,fontSize: 32),),
            SizedBox(height: 20,),
            //Email Or Phone
            Textfields(labelText: "Email or Phone Number",obsCure: false,teController: teEmailController),
            SizedBox(height: 20,),
            // Password
            Textfields(labelText:  "Password",obsCure: true, teController: tePassController),
            SizedBox(height: 20,),
            // Sign Button
            StatefulBuilder(builder: (_, ss) {
              return Column(
                children: [
                  InkWell(
                    child: button(clr: Colors.red,btnText: "Sign In"),
                    onTap: () async {
                      if((teEmailController.text.toString().toLowerCase()=="anujkeshri10@gmail.com" || teEmailController.text.toString()=="9472788783") && tePassController.text.toString().toLowerCase()=="flutter")
                      {
                        var prefs=await SharedPreferences.getInstance();
                        prefs.setBool(LoginBody.logedInRecordCheck, true);
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>FirstPage()));
                      }
                      else{
                        flag=1;
                        print("flag ${flag}");
                      }
                      ss((){});
                    },
                  ),
                  flag==0? Container() : Text("Invalid Email and Password", style: TextStyle(color: Colors.white),),
                ],
              );
            }),
            SizedBox(height: 20,),
            Text("OR", style: TextStyle(color: Colors.white,fontSize: 25),),
            SizedBox(height: 20,),
            InkWell(child: button(btnText: "Sign Up",clr: Colors.white24),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUp()));
              },),
            SizedBox(height: 20,),
            InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgotPassword()));
            },
                child: Text("Forgot Password",style: TextStyle(color: Colors.white,fontSize: 20,),))

          ],
        ),
      ),
    );

  }

// Method button Design
  Widget button({Color? clr, String? btnText}) {
    return Container(
      margin: EdgeInsets.all(5),
      alignment: Alignment.center,
      height: 71,
      child: Text(btnText!,style: TextStyle(fontSize: 31,color: Colors.white),),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        //border: Border.all(color: clr!),
        color: clr,
      ),
    );
  }
}








/*Container(
                    margin: EdgeInsets.all(5),
                    alignment: Alignment.center,
                    height: 71,
                    child: Text("Sign In",style: TextStyle(fontSize: 31,color: Colors.white),),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        border: Border.all(color: Colors.white),
                        color: Colors.black
                    ),
                  ),*/