import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Nabajyoti extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage('images/naba.jpg'),
                radius: 50,
              ),
              Text(
                'Nabajyoti Borah',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Pacifico'),
              ),
              Text(
                'WEB DEVELOPER',
                style: TextStyle(
                    color: Colors.blue[100],
                    fontSize: 20.0,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'SourceSansPro'),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal[100],
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                color: Colors.white,
                child: ListTile(
                  onTap: () => launchAppUrl('tel:+918638552856'),
                  leading: Icon(
                    Icons.phone_iphone,
                    size: 30.0,
                    color: Colors.blue,
                  ),
                  title: Text(
                    '+91 8638552856',
                    style: TextStyle(
                      color: Colors.blue,
                      fontFamily: 'SourceSansPro',
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  onTap: () => launchAppUrl('mailto:sirnaba@gmail.com'),
                  leading: Icon(
                    Icons.email,
                    size: 30.0,
                    color: Colors.blue,
                  ),
                  title: Text(
                    'sirnaba@gmail.com',
                    style: TextStyle(
                      color: Colors.blue,
                      fontFamily: 'SourceSansPro',
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    child: IconButton(
                      icon: Icon(
                        FontAwesomeIcons.mapMarked,
                        size: 30.0,
                      ),
                      color: Colors.white,
                      onPressed: () => launchAppUrl(
                          'https://maps.app.goo.gl/Rr4N2BvieyTBUVmn6'),
                      tooltip: 'Address',
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    child: IconButton(
                      icon: Icon(
                        FontAwesomeIcons.filePdf,
                        size: 30.0,
                      ),
                      color: Colors.white,
                      onPressed: () => launchAppUrl(
                          'https://drive.google.com/open?id=1Y6mxnee6K6Jgc8L3NiMsX236xp-TxcQ0'),
                      tooltip: 'My Resume',
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    child: IconButton(
                      icon: Icon(
                        FontAwesomeIcons.linkedin,
                        size: 30.0,
                      ),
                      color: Colors.white,
                      onPressed: () => launchAppUrl(
                          'https://www.linkedin.com/in/nabajyoti-borah-944000160/'),
                      tooltip: 'Linkedin',
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    child: IconButton(
                      icon: Icon(
                        FontAwesomeIcons.github,
                        size: 30.0,
                      ),
                      color: Colors.white,
                      onPressed: () =>
                          launchAppUrl('https://github.com/Nabajyoti4'),
                      tooltip: 'Github',
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  //fucntion to take in app url action and open appropriate application for the url
  void launchAppUrl(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
