import 'package:find_tour/data.dart';
import 'package:find_tour/home_page/description.dart';
import 'package:find_tour/home_page/state_popular_place.dart';
import 'package:find_tour/login_signup/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
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
    body: SingleChildScrollView(child: HomePageBody()),
    );
  }
}

class HomePageBody extends StatelessWidget
{
  StateName ad=StateName();
  FamousPlaceList fpl=FamousPlaceList();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(11.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Popular State for Tourisim..",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
          SizedBox(height: 15,),
          Container(
            height: 150,
            child: ListView.builder(
              itemCount: ad.stateDetails.length,
                shrinkWrap: false,
                scrollDirection: Axis.horizontal,
                itemBuilder: (_,index){
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(right: 10),
                      width: 150,
                      height: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: NetworkImage(ad.stateDetails[index]['img']),fit: BoxFit.fill,/*opacity: 0.7*/),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onTap: ()
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>StateBestPlace(indx: index,stateName: ad.stateDetails[index]['sName'])));
                    },
                  ),
                  SizedBox(height: 10,),
                  Text(ad.stateDetails[index]['sName'],style: TextStyle(fontSize: 17, color: Colors.black,fontWeight: FontWeight.bold),),
                ],
              );
            }),
          ),
          SizedBox(height: 15,),
          Text("Best place to vist.",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
          SizedBox(height: 15,),
          GridView.builder(
            itemCount: fpl.famousPlace.length,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10
          ),
              itemBuilder: (_,index){
            return InkWell(
              child: Stack(
                children: [
                  Container(
                     // height: 100,
                      child: Image.network(fpl.famousPlace[index]['imgP'],fit: BoxFit.fill,height: double.infinity,)),
                  Align(alignment: Alignment.bottomCenter,child: Text(fpl.famousPlace[index]['fName'],style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),))
                ],

              ),onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Description(index: index,)));
            },
            );
              })
        ],
      ),
    );
  }
}