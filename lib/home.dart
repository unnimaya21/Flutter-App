import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
//import 'package:pjt/prinlist.dart';
import 'package:pjt/gridprin.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Menu"),
      ),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: Builder(builder: (BuildContext context) {
          return FlatButton.icon(
              onPressed: () => {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return Dashboard();
                        },
                      ),
                    )
                  },
              icon:
                  Icon(Icons.account_balance, color: Colors.green, size: 80.0),
              label: Text("Principal List"));
        }),
        //   )
        // ]),
      ),
    ));
  }
}
