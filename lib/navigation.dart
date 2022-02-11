import 'package:demo/pageone.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Mynavigationbar extends StatefulWidget {
  const Mynavigationbar({Key? key}) : super(key: key);

  @override
  _MynavigationbarState createState() => _MynavigationbarState();
}

class _MynavigationbarState extends State<Mynavigationbar> {
  @override
  Widget build(BuildContext context) {
    return  CupertinoTabScaffold(
      tabBar: CupertinoTabBar(items:
      const <BottomNavigationBarItem>[
      //active color use on first

      BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.black,  ), activeIcon: Icon(Icons.home)),
      BottomNavigationBarItem(icon: Icon(Icons.date_range_rounded ,   color: Colors.black,  ), activeIcon: Icon(Icons.date_range_rounded)),
      BottomNavigationBarItem(icon: Icon(Icons.qr_code,  color: Colors.black,  ), activeIcon: Icon(Icons.qr_code)),
      BottomNavigationBarItem(icon: Icon(Icons.notifications,  color: Colors.black,  ), activeIcon: Icon(Icons.notifications)),
      BottomNavigationBarItem(icon: Icon(Icons.person,  color: Colors.black,  ), activeIcon: Icon(Icons.person))
      ],
    ) ,
        tabBuilder: (context , index) {
          switch (index) {
            case 0:

              return CupertinoTabView(builder:  (context) {
                return CupertinoPageScaffold(child: pageone(),);
              });
            case 1:
              return CupertinoTabView(builder: (context) {
                return CupertinoPageScaffold(child:Container(child: Text("page dates "),),);
              });
            case 2:
              return CupertinoTabView(builder: (context) {
                return CupertinoPageScaffold(child:Container(child: Text("page dates "),), );
              });
            case 3:
              return CupertinoTabView(builder: (context) {
                return CupertinoPageScaffold(child: Container(child: Text("page dates "),), );
              });
            case 4:
              return CupertinoTabView(builder: (context) {
                return CupertinoPageScaffold(child: Container(child: Text("page dates "),),);
              });
            default:
              CupertinoTabView(builder: (context) {
                return CupertinoPageScaffold(child:Container(child: Text("page dates "),),);
              });

          }; return Container();
        }
    );
}}
