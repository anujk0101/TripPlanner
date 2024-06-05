import 'package:find_tour/hotel_rest/hotel_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:find_tour/data.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../hotel_rest/restaurant_details.dart';
import '../login_signup/login_page.dart';

class Description extends StatelessWidget
{
  int index;
  Description({required this.index});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("FabIndia"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: InkWell(
                onTap: () async{
                  var prefs=await SharedPreferences.getInstance();
                  prefs.setBool(LoginBody.logedInRecordCheck, false);
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginPage(),));
                },
                child: Icon(Icons.logout)),
                //Text("Logout",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
          )
        ],
        // backgroundColor: Colors.black.withOpacity(0.5),
        //leading: CircleAvatar(backgroundImage: NetworkImage('https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg'),),
      ),
    body: SingleChildScrollView(child: DescriptionBody(index: index,)),);
  }
}

class DescriptionBody extends StatelessWidget
{
  int index;
  FamousPlaceList fpl=FamousPlaceList();
  DescriptionBody({required this.index});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Container(
          width: double.infinity,
            height: 300,
            child: Image.network(fpl.famousPlace[index]['imgP'],fit: BoxFit.fill,)),
        SizedBox(height: 10,),
        Text(fpl.famousPlace[index]['fName'],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(fpl.famousPlace[index]['desc'],style: TextStyle(fontSize: 20,),textAlign: TextAlign.justify,),
        ),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder:(context)=>HotelDetails()));
                },
                  child: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: container("Search Hotel"),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder:(context)=>RestaurantDetails()));
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: container("Search Restaurant"),
                ),
            ),
          ],
        ),
        SizedBox(height: 20,),
      ],
    );
  }
  Widget container(String btnText)
  {
    return Container(
        color: Colors.orangeAccent,
        width: 190,
        height:60,
        child: Center(child: Text(btnText,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21),))
    );
  }
}