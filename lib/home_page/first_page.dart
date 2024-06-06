import 'package:find_tour/home_page/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class FirstPage extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Image(image: NetworkImage("https://lh5.googleusercontent.com/p/AF1QipNaQ1SZnIKTduoRA8gG4NgMV3wNmn36Xnji2Oro=w1080-h624-n-k-no")),
            SizedBox(height: 15,),
Text("India",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("One of the oldest civilisations in the world, India is a mosaic of multicultural experiences. With a rich heritage and myriad attractions, the country is among the most popular tourist destinations in the world. It covers an area of 32, 87,263 sq. km, extending from the snow-covered Himalayan heights to the tropical rain forests of the south. As the 7th largest country in the world, India stands apart from the rest of Asia, marked off as it is by mountains and the sea, which give the country a distinct geographical entity.",style: TextStyle(fontSize: 21,),textAlign: TextAlign.justify,),
            ),
            ElevatedButton(
style: ElevatedButton.styleFrom(backgroundColor: Colors.orangeAccent,
  foregroundColor: Colors.white,
  elevation: 10,shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.zero)),
fixedSize: Size(300, 70),
),
                onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
            }, child: Text("Explore India",style: TextStyle(fontSize: 21,),))
          ],
        ),
      ),
    );
  }
}