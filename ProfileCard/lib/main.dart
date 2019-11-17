import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'pages/abhishek.dart';
import 'pages/nabajyoti.dart';
import 'pages/vivek.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  // only portrait mode for app
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          body: TabBarView(
            children: [
              Vivek(),
              Nabajyoti(),
              Abhishek(),
            ],
          ),
          bottomNavigationBar: TabBar(
            tabs: [
              Tab(
                icon: Icon(FontAwesomeIcons.code),
                text: 'Vivek',
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.desktop),
                text: 'Nabajyoti',
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.android),
                text: 'Abhishek',
              ),
            ],
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.grey,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: Colors.blue,
            indicatorPadding: EdgeInsets.all(10.0),
          ),
        ),
      ),
    );
  }
}

// Container(
//  height: 100.0,
//  width: 100.0,
//  margin: EdgeInsets.only(left: 100.0),
//  padding: EdgeInsets.all(20.
//  child: Text('Hello'),
//),
//     child: Row(
//   // mainAxisSize: MainAxisSize.min,
//   // verticalDirection: VerticalDirection.up,
//   // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//   crossAxisAlignment: CrossAxisAlignment.stretch,
//   children: <Widget>[
//     Container(
//       height: 100.0,
//       width: 100.0,
//       // margin: EdgeInsets.only(left: 100.0),
//       padding: EdgeInsets.all(20.0),
//
//       child: Text('Hello'),
//     ),
//     SizedBox(
//       // height: 20,
//       // width: 20,
//     ),
//     Container(
//       color: Colors.red,
//       height: 100.0,
//       width: 100.0,
//       // margin: EdgeInsets.only(left: 100.0),
//       padding: EdgeInsets.all(20.0),
//     ),
//     // Container(
//     //   width: double.infinity,
//     // )
//   ],
// )),
//  Row(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: <Widget>[
//               Container(
//                 color: Colors.red,
//                 width: 100,
//               ),
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   Container(
//                     color: Colors.yellow,
//                     height: 100,
//                     width: 100,
//                   ),
//                   Container(
//                     color: Colors.green,
//                     height: 100,
//                     width: 100,
//                   )
//                 ],
//               ),
//               Container(
//                 color: Colors.blue,
//                 width: 100,
//               )
//             ],
//           ),

// Row(
//                   children: <Widget>[
//                     Icon(
//                       Icons.phone_iphone,
//                       size: 30.0,
//                       color: Colors.blue,
//                     ),
//                     SizedBox(
//                       width: 10.0,
//                     ),
//                     Text(
//                       '7002457677',
//                       style: TextStyle(
//                         color: Colors.blue,
//                         fontFamily: 'SourceSansPro',
//                         fontSize: 20.0,
//                       ),
//                     ),
//                   ],
//                 ),

// Row(
//                   children: <Widget>[
//                     Icon(
//                       Icons.email,
//                       size: 30.0,
//                       color: Colors.blue,
//                     ),
//                     SizedBox(
//                       width: 10.0,
//                     ),
//                     Text(
//                       'vikichet@gmail.com',
//                       style: TextStyle(
//                         color: Colors.blue,
//                         fontFamily: 'SourceSansPro',
//                         fontSize: 20.0,
//                       ),
//                     )
//                   ],
//                 ),

// Scaffold(
//         // backgroundColor: Colors.teal,
//         body: currentIndex == 0
//             ? Vivek()
//             : currentIndex == 1 ? Nabajyoti() : Abhishek(),
//         bottomNavigationBar: BottomNavigationBar(
//           onTap: onTabTapped,
//           currentIndex:
//               currentIndex, // this will be set when a new tab is tapped
//           items: [
//             BottomNavigationBarItem(
//               icon: Icon(Icons.person),
//               title: Text('Vivek'),
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.person),
//               title: Text('Nabajyoti'),
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.person),
//               title: Text('Abhishek'),
//             )
//           ],
//         ),
//       ),
