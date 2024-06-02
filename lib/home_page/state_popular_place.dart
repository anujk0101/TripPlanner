import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:find_tour/data.dart';

class StateBestPlace extends StatelessWidget
{
  int indx;
  String stateName;
  StateBestPlace({required this.indx,required this.stateName});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text(""),),
      body: StateBestPlaceBody(indx: indx,stateName: stateName,),
    );
  }
}

class StateBestPlaceBody extends StatelessWidget
{
  int indx;
  String stateName;
  StateBestPlaceBody({required this.indx, required this.stateName});
  StateBestPlaceData sbp=StateBestPlaceData();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       Padding(
         padding: const EdgeInsets.only(left: 15.0, bottom: 12),
         child: Text("Top 12 place in ${stateName}", style: TextStyle(fontSize: 22, color: Colors.blueGrey, fontWeight: FontWeight.bold),),
       ),
        ListView.builder(
          itemCount: sbp.stateBestPlace.length,
            shrinkWrap: true,
            itemBuilder: (_,index){
          return ListTile(
            leading: CircleAvatar(backgroundImage: NetworkImage(sbp.stateBestPlace[indx]['img${index+1}']),),
            title: Text(sbp.stateBestPlace[indx]['${index+1}'],style: TextStyle(fontSize: 25),),
          );
        }),
       // GridTile(child: child)
      ],
    );
  }
}