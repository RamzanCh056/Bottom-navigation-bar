import 'package:flutter/material.dart';
class Pagetwo extends StatefulWidget {
  const Pagetwo({Key? key}) : super(key: key);

  @override
  _PagetwoState createState() => _PagetwoState();
}

class _PagetwoState extends State<Pagetwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("page two"),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

        Center(child: Container( child:Text("Page two")))


      ],)


    );
  }
}
