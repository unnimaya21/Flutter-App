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
              child: DataTable(
                columns: [
                  DataColumn(label: Text("Prod Code")),
                  DataColumn(label: Text("Prod Name")),
                  DataColumn(label: Text("Prod UOM")),
                  DataColumn(label: Text("Avt Stock ")),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text("PRD01")),
                    DataCell(Text("PRODUCT ONE")),
                    DataCell(Text("PCS")),
                    DataCell(Text("24")),
                  ]),
                  DataRow(cells: [
                    DataCell(Text("PRD01")),
                    DataCell(Text("PRODUCT ONE")),
                    DataCell(Text("PCS")),
                    DataCell(Text("24")),
                  ]),
                  DataRow(cells: [
                    DataCell(Text("PRD01")),
                    DataCell(Text("PRODUCT ONE")),
                    DataCell(Text("PCS")),
                    DataCell(Text("24")),
                  ]),
                  DataRow(cells: [
                    DataCell(Text("PRD01")),
                    DataCell(Text("PRODUCT ONE")),
                    DataCell(Text("PCS")),
                    DataCell(Text("24")),
                  ])
                ],
              ),
            ))
        // ]),
        );
  }
}
