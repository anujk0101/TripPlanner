import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:find_tour/data.dart';
import 'package:flutter/rendering.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../login_signup/login_page.dart';

class StateBestPlace extends StatelessWidget
{
  int indx;
  String stateName;
  StateBestPlace({required this.indx,required this.stateName});
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
                //child: Text("Logout",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
          )
        ],
        // backgroundColor: Colors.black.withOpacity(0.5),
        //leading: CircleAvatar(backgroundImage: NetworkImage('https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg'),),
      ),
      body: Expanded(child: SingleChildScrollView(child: StateBestPlaceBody(indx: indx,stateName: stateName,))),
    );
  }
}

class StateBestPlaceBody extends StatelessWidget
{
  int indx;
  String stateName;
  Restrurant rest=Restrurant();
  StateBestPlaceBody({required this.indx, required this.stateName});
  StateBestPlaceData sbp=StateBestPlaceData();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Best Restaurant in ${stateName}", style: TextStyle(fontSize: 22, color: Colors.blueGrey, fontWeight: FontWeight.bold),),
          SizedBox(height: 15,),
          SizedBox(
            height: 200,
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: rest.restDetails.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (_,index){
                  return Container(
                    width: 210,
                    child: Column(
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Container(
                            height: 150,
                            decoration: BoxDecoration(
                              borderRadius:BorderRadius.circular(10),
                            ),
                            //padding: const EdgeInsets.all(8.0),
                            child: Image.asset(rest.restDetails[index]["img"],fit: BoxFit.fill,),
                          ),
                        ),
                        Text(rest.restDetails[index]["name"],style: TextStyle(fontSize: 24),),
                      ],
                    ),
                  );
                }),
          ),
         Text("Top 12 place in ${stateName}", style: TextStyle(fontSize: 22, color: Colors.blueGrey, fontWeight: FontWeight.bold),),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            itemCount: sbp.stateBestPlace.length,
              shrinkWrap: true,
              itemBuilder: (_,index){
            return ListTile(
              leading: CircleAvatar(backgroundImage: NetworkImage(sbp.stateBestPlace[indx]['img${index+1}']),),
              title: Text(sbp.stateBestPlace[indx]['${index+1}'],style: TextStyle(fontSize: 25),),
            );
          }),
          SizedBox(height: 15,),

          SizedBox(height: 50,)
        ],
      ),
    );
  }
}