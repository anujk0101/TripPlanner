import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:find_tour/widgets/widget_design.dart';

class OtpValidation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor: Colors.black,
      iconTheme: IconThemeData(color: Colors.white),),
      body: SafeArea(child: OtpValidationBody()),
    );
  }
}


class OtpValidationBody extends StatelessWidget {
  TextEditingController tfOtpController1=TextEditingController();
  TextEditingController tfOtpController2=TextEditingController();
  TextEditingController tfOtpController3=TextEditingController();
  TextEditingController tfOtpController4=TextEditingController();
  TextEditingController tfOtpController5=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text("Enter passcode",
              style: TextStyle(fontSize: 31, color: Colors.white,),),
          ),
          SizedBox(height: 15),
          Text("We have sent a 5-digit passcode on your email address",
            style: TextStyle(fontSize: 20, color: Colors.white.withOpacity(.6)),),
         SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: otpText(tfOtpController1)),
              SizedBox(width: 10,),
              Expanded(child: otpText(tfOtpController2)),
              SizedBox(width: 10,),
              Expanded(child: otpText(tfOtpController3)),
              SizedBox(width: 10,),
              Expanded(child: otpText(tfOtpController4)),
              SizedBox(width: 10,),
              Expanded(child: otpText(tfOtpController5)),
            ],
          ),
          SizedBox(height: 10,),
          Buttons(clr: Colors.red, btnText: "Validate")

        ],
      ),
    );
  }
  Widget otpText(TextEditingController tfController)
  {
    return TextField(
      controller: tfController,
      style: TextStyle(color: Colors.white,fontSize: 22),
      textAlign: TextAlign.center,
     // maxLength: 1,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
          filled: true,
          fillColor: Colors.grey.shade800,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10)),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )
      ),
    );
  }
}
