import 'package:flutter/material.dart';

class AttractionListScreen extends StatelessWidget {
  const AttractionListScreen({Key? key}) : super(key: key);
//https://www.youtube.com/watch?v=AJRfI2Tizpw
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text('test'),
      ),
      body: Center(
        child: ListView.builder(itemBuilder: itemBuilder,itemCount: ,),
      ),
    ));
  }
}
