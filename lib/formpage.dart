import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class formpage extends StatefulWidget {
  String? name;
  String? address;
  String? mobile;
  String? gender;
  String? username;
  String? password;
  String? validator;

  formpage({
    required this.name,
    required this.address,
    required this.mobile,
    required this.gender,
    required this.username,
    required this.password,
    required String email,
  });

  @override
  State<formpage> createState() => _formpageState();
}

class _formpageState extends State<formpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Form Page'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
                color: Colors.white,
                elevation: 0,
                child: SizedBox(
                  height: 500,
                  width: 300,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(children: [
                          Text("Name:"),
                          Text(
                            widget.name.toString(),
                          ),
                        ]),
                      ),
                      SizedBox(
                        height: 10,
                        width: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              'Address:',
                            ),
                            Text(
                              widget.address.toString(),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                        width: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text('Mobile:'),
                            Text(
                              widget.mobile.toString(),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                        width: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text('Gender:'),
                            Text(
                              widget.gender.toString(),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                        width: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text('Username:'),
                            Text(
                              widget.username.toString(),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                        width: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text('Password:'),
                            Text(
                              widget.password.toString(),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                        width: 10,
                      ),
                    ],
                  ),
                )),
          ),
        ));
  }
}
