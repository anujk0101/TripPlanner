import 'dart:async';

import 'package:find_tour/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:find_tour/widgets/widget_design.dart';
import 'package:flutter/widgets.dart';
import 'package:find_tour/login_signup/login_page.dart';
class SignUp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        appBar: AppBar(title: Text("SignUp"),),
      body: SignUpBody(),
    );
  }
}

class SignUpBody extends StatelessWidget
{


  TextEditingController tfEmailController=TextEditingController();
  TextEditingController tfFirstNameController=TextEditingController();
  TextEditingController tfLastNameController=TextEditingController();
  TextEditingController tfPassController=TextEditingController();
  int flag=0;
  @override
  Widget build(BuildContext context) {

    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(left: 20,right: 20),
      child: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Text("SignUp",style: TextStyle(color: Colors.white, fontSize: 32),),
            SizedBox(height: 20,),
            Row(
              children: [
                Expanded(child: Textfields(labelText: "First Name",obsCure: false,teController: tfFirstNameController)),
                SizedBox(width: 10,),
                Expanded(child: Textfields(labelText: "Last Name",obsCure: false,teController: tfLastNameController)),
              ],
            ),
            SizedBox(height: 20,),
            //Email Or Phone
            Textfields(labelText: "Email or Phone Number",obsCure: false,teController: tfEmailController),
            SizedBox(height: 20,),
            // Password
            Textfields(labelText:  "Password",obsCure: true, teController: tfPassController),
            SizedBox(height: 20,),
            // Sign Button
            StatefulBuilder(builder: (_, ss) {
              return Column(
                children: [
                  InkWell(
                    child: button(clr: Colors.red,btnText: "Sign Up"),
                    onTap: (){
                      flag=1;
                      ss((){});
                      AllData ad=AllData();
                      ad.dataLoginDetails.add({'userId' : tfEmailController.text.toString(),'password':tfPassController.text.toString()});
                   print(ad.dataLoginDetails);
                     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> LoginPage()));
                     // Timer(Duration(seconds: 4),() {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> LoginPage()));},);
                      //AllData(userID: tfEmailController.text.toString(),password: tfPassController.text.toString());
                     // map3['key3'] = 'value3';
                     // dataLoginDetails.add({'userId' : tfEmailController.text.toString(),'password':tfPassController.text.toString()});
                    },
                  ),
                 flag==0? Container() : Text("Successfully Created account", style: TextStyle(color: Colors.white),),
                ],
              );
            }),

          ],
        ),
      ),
    );
  }
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