import 'package:flutter/material.dart';

class HotelDetails extends StatelessWidget {
  const HotelDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hotel")),
    body: HotelDetailsBody(),
    );
  }
}

class HotelDetailsBody extends StatelessWidget {
  const HotelDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

      ],
    );
  }
}

