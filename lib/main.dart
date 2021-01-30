import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//writing this as a class outside the main method allow us to make use of the hot reload feature - faster dev time
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/teekay.jpg'),
              ),
              Text(
                'Ng TK',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  fontFamily: 'Source San Pro',
                  fontSize: 20.0,
                  color: Colors.teal.shade200,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10.0,
                width: 150,
                child: Divider(
                  color: Colors.teal.shade50,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 25.0, horizontal: 25.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.phone,
                        color: Colors.teal,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        '+65 098098 09809',
                        style: TextStyle(
                          color: Colors.teal.shade500,
                          fontFamily: "Pacifico",
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 10.0,
                  ),
                  child: ListTile(
                      leading: Icon(
                        Icons.email,
                        color: Colors.teal,
                      ),
                      title: Text(
                        'tk125@gmail.com',
                        style: TextStyle(
                          color: Colors.teal.shade500,
                          fontFamily: "Pacifico",
                        ),
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
