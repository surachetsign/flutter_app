import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/bg.png"), fit: BoxFit.cover),
            ),
          ),
          ListView(
            children: [
              _buildFrom(),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildFrom() => Card(
        margin: EdgeInsets.only(top: 80, left: 30, right: 30),
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Form(
              child: Column(
            children: [
              _logo(),
              SizedBox(
                height: 22,
              ),
              _buildUsernameInout(),
              SizedBox(
                height: 8,
              ),
              _buildPasswordInput(),
              SizedBox(
                height: 28,
              ),
              _buildSubmit(),
              _buildForgotPasswordButton(),
            ],
          )),
        ),
      );

  Widget _logo() => Image.asset(
        "assets/header_main.png",
        fit: BoxFit.cover,
      );

  Widget _buildUsernameInout() => TextFormField(
        decoration: InputDecoration(
            labelText: 'Email',
            hintText: "example@gmail.com",
            icon: Icon(Icons.email)),
        keyboardType: TextInputType.emailAddress,
        validator: _validEmail,
        onSaved: (String value) {},
        onFieldSubmitted: (String value) {},
      );

  Widget _buildPasswordInput() => TextFormField(
        decoration: InputDecoration(
          labelText: 'Password',
          icon: Icon(Icons.lock),
        ),
        obscureText: true,
        validator: _validPassword,
        onSaved: (String value) {},
      );

  Widget _buildSubmit() => Container(
        color: Colors.blue,
        width: MediaQuery.of(context).size.width,
        child: RaisedButton(
          color: Colors.blue,
          child: Text(
            "Login".toUpperCase(),
            style: TextStyle(color: Colors.white),
          ),
          onPressed: _submit,
        ),
      );

  Widget _buildForgotPasswordButton() => Container(

        width: MediaQuery.of(context).size.width,
        child: FlatButton(
          splashColor: Colors.blue.shade500,
          child: Text(
            "Forgot Password?".toUpperCase(),
            style: TextStyle(color: Colors.black54),
          ),
          onPressed: _submit,
        ),
      );

  void _submit() {
    
  }

  String _validEmail(String value) {

    return null;
  }

  String _validPassword(String value) {
    return null;
  }
}
