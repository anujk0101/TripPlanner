import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Textfields extends StatelessWidget {
  String? labelText;
  bool obsCure=false;
  TextEditingController? teController;
  Textfields({this.labelText, required this.obsCure,this.teController});
  @override
  Widget build(BuildContext context) {
   return TextField(
     controller: teController,
     obscureText: obsCure,

     style: TextStyle(color: Colors.white, fontSize: 22),
     decoration: InputDecoration(
         labelText: labelText,
         labelStyle: TextStyle(fontSize: 20,color: Colors.white),
         filled: true,
         fillColor: Colors.grey.shade800,
         enabledBorder: OutlineInputBorder(
           borderRadius: BorderRadius.circular(10),
         ),
         focusedBorder: OutlineInputBorder(
           borderRadius: BorderRadius.circular(10),
         )
     ),
   );
  }
}


class Buttons extends StatelessWidget{
  Color clr;
  String btnText;
  Buttons({required this.clr, required this.btnText});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(1),
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
