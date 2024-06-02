import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:find_tour/data.dart';

class Description extends StatelessWidget
{
  int index;
  Description({required this.index});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(appBar: AppBar(),
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
          child: Text(fpl.famousPlace[index]['desc'],style: TextStyle(fontSize: 20,),),
        ),
      ],
    );
  }
}