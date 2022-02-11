import 'package:demo/pagetwo.dart';
import 'package:flutter/material.dart';
class pageone extends StatefulWidget {
  const pageone({Key? key}) : super(key: key);

  @override
  _pageoneState createState() => _pageoneState();
}

class _pageoneState extends State<pageone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("page one"),),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            MaterialButton(
              color: Colors.lightBlueAccent,
              minWidth: 150,
              height: 50,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>  Pagetwo  ()));// signup
              },
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Colors.lightBlueAccent,
                ),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Text(
                "Jump to page two",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,color: Colors.white,
                ),

              ),
            ),
          ],
        ),
      ),

    );
  }
}
