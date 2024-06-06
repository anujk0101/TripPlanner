import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../data.dart';

class Menu extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Place you order"),),
      body: SingleChildScrollView(child: MenuBody()),
    );
  }
}
class MenuBody extends StatefulWidget
{
  @override
  State<MenuBody> createState() => _MenuBody();
}
class _MenuBody extends State<MenuBody>{
  Menus mnu=Menus();
@override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
      Container(
        margin: EdgeInsets.only(right: 10,left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Recommended items",style:
              TextStyle(fontWeight: FontWeight.bold,fontSize: 21),),
            SizedBox(height: 10,),
            ListView.builder(
              itemCount: mnu.menusDetails.length,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (_,index){
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 50.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex:3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            mnu.menusDetails[index]["type"]=="non veg" ? Image.asset("asset/logo/stop.png",color: Colors.red,height: 25,width: 25) : Image.asset("asset/logo/stop.png",color: Colors.green,height: 25,width: 25,),
                            Text(mnu.menusDetails[index]["item"],style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                            Row(
                              children: [
                                Icon(Icons.currency_rupee,size: 15,),
                                Text(mnu.menusDetails[index]["price"].toString(),style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                              ],
                            ),
                              SizedBox(height: 10,),
                              Text(mnu.menusDetails[index]["desc"],textAlign: TextAlign.justify,),
                          ],
                          ),
                        ),
                        SizedBox(width: 10,),
                        Expanded(
                          flex:2,
                          child: SizedBox(
                            width:150,
                            height: 150,
                            child: Stack(
                             // alignment: Alignment.bottomCenter,
                              children: [
                                Container(
                                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage(mnu.menusDetails[index]["img"]),fit: BoxFit.fill),
                                  borderRadius: BorderRadius.circular(12)),
                                ),
                                Container(
                                  alignment: Alignment.bottomCenter,
                                  child: ElevatedButton(onPressed: (){}, child: Text("ADD"),),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
          ],
        ),
      );
  }
}