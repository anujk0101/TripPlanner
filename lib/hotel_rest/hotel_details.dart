import 'package:find_tour/data.dart';
import 'package:flutter/material.dart';

class HotelDetails extends StatelessWidget {
  const HotelDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hotel")),
    body: SingleChildScrollView(child: HotelDetailsBody()),
    );
  }
}

class HotelDetailsBody extends StatelessWidget {

  Hotels htl=Hotels();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 8,right: 8,top: 8),
      //color: Colors.red,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            decoration: InputDecoration(
                labelText: "Search Hotels",
                enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey,width: 2)),
                focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey,width: 2))
            ),
          ),
          SizedBox(height: 15,),
          SizedBox(
            height: 300,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
                itemCount: htl.roomsDetails.length,
                shrinkWrap: true,
                itemBuilder: (_,index)
            {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 20),
                        height:180,
                      width: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(image: AssetImage(htl.roomsDetails[index]["img"]),fit: BoxFit.fill)
                        ),
                    ),
                    SizedBox(height: 10,),
                    Text(htl.roomsDetails[index]["name"],style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),),
                    Row(
                      children: [
                        Icon(Icons.currency_rupee,size: 21,),
                        Text("${htl.roomsDetails[index]["price"]}/ 10% OFF",style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),),
                      ],
                    ),
                    Row(
                      children: [
                        Text("+",style: TextStyle(fontSize: 18),),
                        Icon(Icons.currency_rupee,size: 18,),
                        Text("${htl.roomsDetails[index]["tax"]} taxes & fees",style: TextStyle(fontSize: 18),),
                      ],
                    ),
                  ],
                );

            }
            ),
          ),
          SizedBox(height: 15,),
          Text("Budgeted Hotels",style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),),
          SizedBox(height: 21,),
          ListView.builder(
              itemCount: htl.roomsDetails.length,
              physics: NeverScrollableScrollPhysics(),
              reverse: true,
              shrinkWrap: true,
              itemBuilder: (_,index)
             {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  height:200,
                  width: 180,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(image: AssetImage(htl.roomsDetails[index]["img"]),fit: BoxFit.fill)
                  ),
                ),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hotel ${htl.roomsDetails[index]["name"]}",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                    Row(
                      children: [
                        Icon(Icons.currency_rupee,size: 21,),
                        Text("${htl.roomsDetails[index]["price"]}/ 10% OFF",style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),),
                      ],
                    ),
                    Row(
                      children: [
                        Text("+",style: TextStyle(fontSize: 18),),
                        Icon(Icons.currency_rupee,size: 18,),
                        Text("${htl.roomsDetails[index]["tax"]} taxes & fees",style: TextStyle(fontSize: 18),),
                      ],
                    ),
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

