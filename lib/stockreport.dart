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
