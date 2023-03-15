import 'package:flutter/material.dart';

import 'registration.dart';

class MySignIn extends StatefulWidget {
  const MySignIn({super.key});

  @override
  State<MySignIn> createState() => _MySignIn();
}

class _MySignIn extends State<MySignIn> {
  final _formKey = GlobalKey<FormState>();
  final username_controller = TextEditingController();
  final password_controller = TextEditingController();

  var isVisible = false;
  String? username;
  String? password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Sign In'),
        ),
        body: Padding(
          padding: EdgeInsets.all(15),
          child: Form(
              key: _formKey,
              child: Column(children: [
                Padding(
                  padding: EdgeInsets.all(15),
                  child: TextFormField(
                    controller: username_controller,
                    decoration: InputDecoration(
                       icon: const Icon(Icons.person), 
                      border: OutlineInputBorder(),
                      labelText: 'User Name',
                      hintText: 'Enter Your Name',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      setState(() {
                        password = value;
                      });
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: TextFormField(
                    controller: password_controller,
                    obscureText: true,
                    decoration: InputDecoration(
                       icon: const Icon(Icons.password), 
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: 'Enter Password',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter a valid password';
                      }
                      return null;
                    },
                    // onChanged: (value) {
                    //   setState(() {
                    //     password = value;
                    //   });
                    // },
                  ),
                ),
                ElevatedButton(
                    child: Text('Log In'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      textStyle: const TextStyle(
                          color: Colors.white, fontStyle: FontStyle.normal),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        print("Validated");
                        setState(() {
                          
                       
                        username = username_controller.text;
                        password = password_controller.text;
                        isVisible = !isVisible;
                         });
                      }
                    }),
                Center(
                    child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(25),
                      child: TextButton(
                        child: Text(
                          'SignUp',
                          style: TextStyle(fontSize: 20.0),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyRegistration()));
                        },
                      ),
                    ),
                  ],
                )),
                Visibility(
                    visible: isVisible,
                    child: Container(
                      margin: const EdgeInsets.all(10.0),
                      color: Colors.blue,
                      width: 200.0,
                      height: 200.0,
                      child: Center(
                          child: Column(
                        children: [
                          Text('username=' + username.toString(),
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18)),
                          Text('password=' + password.toString(),
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18))
                        ],
                      )),
                    ))
              ])),
        ));
  }
}
