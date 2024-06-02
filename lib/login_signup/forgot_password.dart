import 'package:find_tour/login_signup/otp_validation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:find_tour/widgets/widget_design.dart';

class ForgotPassword extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.white),),
      backgroundColor: Colors.black,
      body: SafeArea(child: ForgotPassBody()),
    );
  }
}

class ForgotPassBody extends StatelessWidget
{
  TextEditingController tfEmailController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 5,right: 5,top: 15),
      child: Column(
        children: [
          Row(
            children: [
              Text("Password assistance", style: TextStyle(fontSize: 31,color: Colors.white),),
            ],
          ),
          SizedBox(height: 15,),
          Text("Enter the email address associated with your ABC account.", style: TextStyle(fontSize: 20,color: Colors.white.withOpacity(.6)),),
          SizedBox(height: 15,),
          Textfields(obsCure: false,labelText: "Enter Email Address",teController: tfEmailController,),
          SizedBox(height: 15,),
          InkWell(child: Buttons(btnText: "Continue",clr: Colors.red,),onTap: ()
            {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>OtpValidation()));
            },)
        ],
      ),
    );
  }
}