import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../data.dart';

class RestaurantDetails extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Restaurant"),),
      body: SingleChildScrollView(child: RestaurantDetailsBody()),
    );
  }
}

class RestaurantDetailsBody extends StatefulWidget {
  const RestaurantDetailsBody({super.key});
  @override
  State<RestaurantDetailsBody> createState() => _RestaurantDetailsBodyState();
}

class _RestaurantDetailsBodyState extends State<RestaurantDetailsBody> {
  Restrurant rst=Restrurant();
  Explore explore=Explore();
  Items itm=Items();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: "Search Restaurant",
              enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.grey,width: 2)),
              focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.grey,width: 2))
            ),
          ),
          SizedBox(height: 15,),
          SizedBox(
            height: 200,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: rst.restDetails.length,
                itemBuilder: (_,index){
              return Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 12),
                    width: 160,height: 160,
                    child: Image.network(rst.restDetails[index]['img'],fit: BoxFit.fill,),
                  ),
                  Text(rst.restDetails[index]['name'],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21),)
                ],
              );
            }),
          ),
          SizedBox(height: 15,),
          Text("What's on your mind?", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
          SizedBox(height: 15,),
          SizedBox(
            height: 100,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: itm.itemsDetail.length,
                itemBuilder: (_,index){
                  return Container(
                        padding: EdgeInsets.only(right: 12),
                        //width: 160,height: 160,
                        child: Column(
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage(itm.itemsDetail[index]["img"],),
                              maxRadius: 30,
                            ),
                            Text(itm.itemsDetail[index]['item'],),
                          ],
                        )
                      //Image.network(rst.restDetails[index]['img'],fit: BoxFit.fill,),
                    );
                }),
          ),
          SizedBox(height: 2,),
          Text("Restaurant to explore", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
          SizedBox(height: 15,),
          ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: explore.exploreRest.length,
              itemBuilder: (_,index){
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                   // height: 180,
                    width: 150,
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Image(image: NetworkImage(explore.exploreRest[index]["img"]),fit:BoxFit.fill,height: 180,),
                        Positioned(child: Text(explore.exploreRest[index]["offer1"],style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 21),),bottom: 30,),
                        Positioned(child: Text(explore.exploreRest[index]["offer2"],style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 21),),bottom: 10,)
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(explore.exploreRest[index]["name"],style: TextStyle(fontSize: 21),),
                      Text(explore.exploreRest[index]["detail"]),
                      Text(explore.exploreRest[index]["Location"]),
                    ],
                  ),
                ],
              );
          })
        ],
      ),
    );
  }
}
