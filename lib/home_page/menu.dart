import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: MenuBody(),
    );
  }
}
class MenuBody extends StatefulWidget
{
  @override
  State<MenuBody> createState() => _MenuBody();
}
class _MenuBody extends State<MenuBody>{
@override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        children: [
          Text("")
        ],
      ),
    );
  }
}