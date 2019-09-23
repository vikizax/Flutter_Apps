import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Abhishek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[700],
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage('images/abhishek.jpg'),
                radius: 50,
              ),
              Text(
                'Abhishek Dogra',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Pacifico'),
              ),
              Text(
                'ANDROID DEVELOPER',
                style: TextStyle(
                    color: Colors.orange[100],
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
                  onTap: () => launchAppUrl('tel:+917002749681'),
                  leading: Icon(
                    Icons.phone_iphone,
                    size: 30.0,
                    color: Colors.blue,
                  ),
                  title: Text(
                    '+91 7002749681',
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
                  onTap: () => launchAppUrl('mailto:abhishekdogra02@gmail.com'),
                  leading: Icon(
                    Icons.email,
                    size: 30.0,
                    color: Colors.blue,
                  ),
                  title: Text(
                    'abhishekdogra02@gmail.com',
                    overflow: TextOverflow.ellipsis,
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
                          'https://maps.app.goo.gl/8mcWkeHYSRT9LLU88'),
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
                      onPressed: () {
                        showMsg(context);
                      },
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
                      onPressed: () {
                        showMsg(context);
                      },
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
                      onPressed: () {
                        showMsg(context);
                      },
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

// show msg "Not available :P" for the option with no additional action
  void showMsg(BuildContext context) {
    Scaffold.of(context).showSnackBar(new SnackBar(
      content: new Text("Not available :P"),
    ));
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
