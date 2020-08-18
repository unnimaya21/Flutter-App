import 'package:flutter/material.dart';
import 'package:pjt/gridprin.dart';
import 'package:pjt/home.dart';

void main() => runApp(new Login());

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Form validation",
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  String _username;
  String _password;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      key: _scaffoldKey,
      appBar: new AppBar(title: new Text("Aware Mobile")),
      body: new Container(
          padding: const EdgeInsets.all(20.0), child: formSetup(context)),
    );
  }

  Widget formSetup(BuildContext context) {
    return new Form(
      key: _formKey,
      child: new Column(
        children: <Widget>[
          new TextFormField(
            decoration: InputDecoration(labelText: "Username"),
            // keyboardType: TextInputType.Username,
            validator: (val) {
              if (val != "unni") return "Invalid Username";
            },
            onSaved: (val) => _username = val,
          ),
          new TextFormField(
            decoration:
                InputDecoration(hintText: "Password", labelText: "Password"),
            obscureText: true,
            validator: (val) {
              if (val != "maya")
                return "Invalid password";
              // else if (val.length <= 5)
              //   return "Your password should be more then 6 char long";
              else
                return null;
            },
            onSaved: (val) => _password = val,
          ),
          new Padding(
            padding: const EdgeInsets.only(top: 20.0),
          ),
          new RaisedButton(
            child: new Text("Login"),
            onPressed: () {
              if (_formKey.currentState.validate()) {
                _formKey.currentState.save();
                // _scaffoldKey.currentState.showSnackBar(new SnackBar(
                //   content: new Text(
                //       "Your email: $_username and Password: $_password"),
                // )
                // );
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return Dashboard();
                    },
                  ),
                );
              } else {
                return Text("Invalid");
              }
            },
            color: Colors.blue,
            highlightColor: Colors.blueGrey,
          )
        ],
      ),
    );
  }
}
