import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'formpage.dart';

class MyRegistration extends StatefulWidget {
  // ignore: unused_field
  //final _formKey = GlobalKey<FormState>();
  const MyRegistration({super.key});

  @override
  State<MyRegistration> createState() => _MyRegistration();
}

TextEditingController nameController = TextEditingController();
TextEditingController addressController = TextEditingController();
TextEditingController emailController = TextEditingController();
TextEditingController mobileController = TextEditingController();
TextEditingController usernameController = TextEditingController();
TextEditingController passwordController = TextEditingController();
final _formKey = GlobalKey<FormState>();

class _MyRegistration extends State<MyRegistration> {
  String? gender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Registration'),
        ),
        body: Padding(
            padding: EdgeInsets.all(15),
            child: Form(
                key: _formKey,
                child: SingleChildScrollView(
                  child: Column(children: [
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: TextFormField(
                        controller: nameController,
                        decoration: InputDecoration(
                           icon: const Icon(Icons.person), 
                          border: OutlineInputBorder(),
                          labelText: 'Name',
                          hintText: 'Enter Your Name',
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: TextFormField(
                        //obscureText: true,
                        controller: addressController,
                        decoration: InputDecoration(
                           icon: const Icon(Icons.text_fields), 
                          border: OutlineInputBorder(),
                          labelText: 'Address',
                          hintText: 'Enter Your Address',
                        ),

                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: TextFormField(
                        controller: emailController,
                        decoration: InputDecoration(
                           icon: const Icon(Icons.email), 
                          border: OutlineInputBorder(),
                          labelText: 'Email',
                          hintText: 'Enter Your Email',
                        ),
                        validator: (value) {
                          if (value!.isEmpty ||
                      !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(value)) {
                    return 'Enter a valid email!';
                  }
                  return null;
                },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: TextFormField(
                        controller: mobileController,
                        obscureText: true,
                        decoration: InputDecoration(
                           icon: const Icon(Icons.phone), 
                          border: OutlineInputBorder(),
                          labelText: 'Mobile',
                          hintText: 'Enter Your Mobile No:',
                        ),
                        validator: (number) {
                           if (number!.length != 10)
      return 'Mobile Number must be of 10 digit';
    else
      return null;
  }

                        //   if (value!.isEmpty) {
                        //     return 'Please enter mobile number';
                        //   }
                        //   return null;
                        // },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: FormBuilderRadioGroup(
                        name: "Gender",
                        onChanged: (value) {
                          setState(() {
                            gender = value;
                          });
                        },
                        decoration: InputDecoration(
                            icon: const Icon(Icons.person), 
                            border: OutlineInputBorder(),
                            labelText: "Gender",
                            labelStyle: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 22)),
                        options: [
                          FormBuilderFieldOption(value: "Male"),
                          FormBuilderFieldOption(value: "Female"),
                        ],
                        
                      ),
                      
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: TextFormField(
                        controller: usernameController,
                        decoration: InputDecoration(
                           icon: const Icon(Icons.person), 
                          border: OutlineInputBorder(),
                          labelText: 'User',
                          hintText: 'Enter User Name',
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter user name';
                          }
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: TextFormField(
                        controller: passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                           icon: const Icon(Icons.password), 
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                          hintText: 'Enter Password',
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter valid password';
                          }
                          return null;
                        },
                      ),
                    ),
                    ElevatedButton(
                        child: Text('Registration'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue,
                          textStyle: const TextStyle(
                              color: Colors.white, fontStyle: FontStyle.normal),
                        ),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            print("Validated");
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => formpage(
                                        name: nameController.text,
                                        address: addressController.text,
                                        email: emailController.text,
                                        mobile: mobileController.text,
                                        username: usernameController.text,
                                        password: passwordController.text,
                                        gender: gender)));
                            print(nameController.text);
                            print(addressController.text);
                            print(emailController.text);

                            print(mobileController.text);
                            print(gender);
                            print(usernameController.text);
                            print(passwordController.text);
                          }
                        }),
                  ]),
                ))));
  }
}
