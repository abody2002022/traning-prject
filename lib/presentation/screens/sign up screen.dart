// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  var emailcontroller = TextEditingController();
  var basswordcontroller = TextEditingController();
  var Namecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Sign up',
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          TextFormField(
            controller: Namecontroller,
            keyboardType: TextInputType.emailAddress,
            onFieldSubmitted: (value) {
              print(value);
            },
            onChanged: (value) {
              print(value);
            },
            decoration: InputDecoration(
              labelText: 'your Name',
              border: OutlineInputBorder(),
              prefixIcon: Icon(
                Icons.person,
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
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
                'Sign up',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
