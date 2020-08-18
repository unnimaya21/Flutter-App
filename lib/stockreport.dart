<<<<<<< HEAD
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
//import 'package:pjt/prinlist.dart';
import 'package:pjt/gridprin.dart';

class StockReport extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Stock Report"),
          ),
          body: ListView(
            children: <Widget>[
              DataTable(
                columns: [
                  DataColumn(label: Text("Prod Code")),
                  DataColumn(label: Text("Prod Name")),
                  DataColumn(label: Text("Prod UOM")),
                  DataColumn(label: Text("Avt Stock ")),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text("prod")),
                    DataCell(Text("prod")),
                    DataCell(Text("prod")),
                    DataCell(Text("prod")),
                  ])
                ],
              )
            ],
          )
          // ]),
          ),
    );
  }
}
=======
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
//import 'package:pjt/prinlist.dart';
import 'package:pjt/gridprin.dart';

class StockReport extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Stock Report"),
          ),
          body: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child:
              DataTable(

                columns: [
                  DataColumn(label: Text("Prod Code")),
                  DataColumn(label: Text("Prod Name")),
                  DataColumn(label: Text("Prod UOM")),
                  DataColumn(label: Text("Avt Stock ")),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text("prod")),
                    DataCell(Text("prod")),
                    DataCell(Text("prod")),
                    DataCell(Text("prod")),
                  ])
                ],
              ),
          )

          )
          // ]),
          );

  }
}
>>>>>>> cc61908f833399a2a207855897fc04a92f3f21e1
