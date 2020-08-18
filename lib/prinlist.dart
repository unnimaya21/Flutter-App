import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PrinList extends StatefulWidget {
  @override
  _PrinListState createState() => _PrinListState();
}

class _PrinListState extends State<PrinList> {
  @override
  var Princode = [
    '0020',
    '003',
    '004',
    '005',
    '006',
    '007',
    '008',
    '009',
    '010',
    '011',
    '012',
    '013',
    '014',
    '015',
    '016',
    '017',
    '018'
  ];
  var Prinname = [
    'Chanay, Jeffrey A Esq',
    'Chemel, James L Cpa',
    'Feltz Printing Service',
    'Printing Dimensions',
    'Chapman, Ross E Esq',
    'Morlong Associates',
    'Commercial Press',
    'King, Christopher A Esq',
    'Dorl, James J Esq',
    'Rangoni Of Florence',
    'Feiner Bros',
    'Buckley Miller & Wright',
    'Rousseaux, Michael Esq',
    'Century Communications',
    'Bolton, Wilbur Esq',
    'T M Byxbee Company Pc'
  ];

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Principal List"),
        ),
        body: Form(
          child: ListView.builder(
            itemCount: Prinname.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: ListTile(
                    onTap: () {
                      print(Prinname[index]);
                      // final SnackBar = SnackBar(content: Text(Prinname[index]));
                      // Scaffold.of(context).showSnackBar(snackBar);
                    },
                    title: Text(
                      Prinname[index],
                      style: TextStyle(fontSize: 20),
                    ),
                    subtitle: Text(Princode[index]),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
