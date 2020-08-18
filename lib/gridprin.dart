import 'package:flutter/material.dart';
import 'package:pjt/grn.dart';
import 'package:pjt/prinlist.dart';
import 'package:pjt/home.dart';
import 'package:pjt/stockreport.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu"),
        elevation: .1,
        backgroundColor: Color.fromRGBO(59, 87, 110, 1.0),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        //padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 2.0),
        child: GridView.count(
          crossAxisCount: 2,
          //padding: EdgeInsets.all(13.0),
          children: <Widget>[
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () => {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return PrinList();
                      },
                    ),
                  )
                },
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.account_balance,
                          size: 70.0, color: Colors.orangeAccent),
                      Text("Prin List", style: new TextStyle(fontSize: 17))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () => {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return StockReport();
                      },
                    ),
                  )
                },
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.account_balance_wallet,
                          size: 70.0, color: Colors.red),
                      Text("Stock Report", style: new TextStyle(fontSize: 17))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () => {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return GrnReport();
                      },
                    ),
                  )
                },
                splashColor: Colors.brown,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.assignment,
                          size: 70.0, color: Colors.lightBlue),
                      Text("GRN Report", style: new TextStyle(fontSize: 17))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {},
                splashColor: Colors.red,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.account_balance,
                          size: 70.0, color: Colors.brown),
                      Text("Transaction Report",
                          style: new TextStyle(fontSize: 17))
                    ],
                  ),
                ),
              ),
            ),
          ],
          //)
        ),
      ),
    );
  }
}
