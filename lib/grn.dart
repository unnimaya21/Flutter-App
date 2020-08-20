import 'package:flutter/material.dart';
//import 'package:pjt/prinlist.dart';

class GrnReport extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("GRN Reports"),
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        //padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 2.0),
        child: GridView.count(crossAxisCount: 1, mainAxisSpacing: 2,
            //padding: EdgeInsets.all(13.0),
            children: <Widget>[
              Card(
                  margin: EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.all(10),
                          child: Table(
                            //border: TableBorder.all(),
                            children: [
                              TableRow(children: [
                                Column(children: [
                                  Text('JobNo:'),
                                  Text("102002589")
                                ]),
                                Column(children: [Text('Settings')]),
                                Column(children: [Text('Ideas')]),
                              ]),
                            ],
                          )),
                    ],
                  )),
              Card(
                  margin: EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                          //margin: EdgeInsets.all(10),
                          child: Table(
                        //border: TableBorder.all(),
                        children: [
                          TableRow(children: [
                            Column(
                                children: [Text('JobNo:'), Text("102002589")]),
                            Column(children: [Text('Settings')]),
                            Column(children: [Text('Ideas')]),
                          ]),
                        ],
                      )),
                    ],
                  )),
              Card(
                  //margin: EdgeInsets.all(8.0),
                  child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.all(10),
                      child: Table(
                        //border: TableBorder.all(),
                        children: [
                          TableRow(children: [
                            Column(
                                children: [Text('JobNo:'), Text("102002589")]),
                            Column(children: [Text('Settings')]),
                            Column(children: [Text('Ideas')]),
                          ]),
                        ],
                      )),
                ],
              )),
              Card(
                  margin: EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.all(10),
                          child: Table(
                            //border: TableBorder.all(),
                            children: [
                              TableRow(children: [
                                Column(children: [
                                  Text('JobNo:'),
                                  Text("102002589")
                                ]),
                                Column(children: [Text('Qnty:'), Text('20')]),
                                Column(children: [Text('CBM:')]),
                              ]),
                            ],
                          )),
                    ],
                  )),
            ]),
      ),
    ));
  }
}
