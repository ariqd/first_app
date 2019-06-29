import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AuthPageState();
  }
}

class _AuthPageState extends State<AuthPage> {
  String _emailValue;
  String _passwordValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
//      appBar: AppBar(
//        title: Text('Login'),
//        centerTitle: true,
//      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Image(
              image: AssetImage('assets/logo.png'),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'E-mail'),
              keyboardType: TextInputType.emailAddress,
              onChanged: (String value) {
                setState(() {
                  _emailValue = value;
                });
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
              onChanged: (String value) {
                setState(() {
                  _passwordValue = value;
                });
              },
            ),
//            Switch(),
            SizedBox(
              height: 10.0,
            ),
            RaisedButton(
              child: Text('LOGIN'),
              textColor: Colors.white,
              color: Colors.teal,
              onPressed: () {
                print(_emailValue);
                print(_passwordValue);
                Navigator.pushReplacementNamed(context, '/products');
              },
            ),
          ],
        ),
      ),
    );
  }
}
