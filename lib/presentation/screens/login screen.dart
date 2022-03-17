// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:state_management_provider/presentation/screens/sign%20up%20screen.dart';

class loginscreen extends StatelessWidget {
  var emailcontroller = TextEditingController();
  var basswordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'login',
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 40.0,
          ),
          TextFormField(
            controller: emailcontroller,
            keyboardType: TextInputType.emailAddress,
            onFieldSubmitted: (value) {
              print(value);
            },
            onChanged: (value) {
              print(value);
            },
            decoration: InputDecoration(
              labelText: 'Email Adress',
              border: OutlineInputBorder(),
              prefixIcon: Icon(
                Icons.email,
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          TextFormField(
            controller: basswordcontroller,
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            onFieldSubmitted: (value) {
              print(value);
            },
            onChanged: (value) {
              print(value);
            },
            decoration: InputDecoration(
              labelText: 'password',
              border: OutlineInputBorder(),
              prefixIcon: Icon(
                Icons.lock,
              ),
              suffixIcon: Icon(
                Icons.remove_red_eye,
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            width: double.infinity,
            color: Colors.blue,
            child: MaterialButton(
              onPressed: () {
                print(emailcontroller.text);
                print(basswordcontroller.text);
              },
              child: Text(
                'log in',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          TextButton(
            child: Center(
              child: Text(
                'sign up',
                style: TextStyle(fontSize: 20.0, color: Colors.black),
              ),
            ),
            onPressed: () {
              _navigateToNextScreen(context);
            },
          ),
        ],
      ),
    );
  }
}

void _navigateToNextScreen(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignUp()));
}
