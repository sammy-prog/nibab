import 'package:flutter/material.dart';
import 'package:nibab/Screens/authentication/login.dart';
import 'package:nibab/components/button_container.dart';
import 'package:nibab/components/input_decorator.dart';
import 'package:nibab/constants/constants.dart';

class Signup extends StatefulWidget {
  static const String id = 'signup';
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool obscure = true;
  IconData iconData = Icons.visibility;

  String _name;
  String _email;
  String _passwordToSave;
  TextEditingController _password = TextEditingController();
  TextEditingController _confirmpassword = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Text(
                      'Sign up',
                      style: TextStyle(
                          fontSize: 30.0,
                          fontFamily: 'SourceSansProBold',
                          color: Color(0xFF030925)),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Sign up to join',
                      style: TextStyle(
                        color: Colors.grey.shade400,
                        fontSize: 18.0,
                        fontFamily: 'SourceSansPro',
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                      //width: MediaQuery.of(context).size.width,
                    ),
                    Text(
                      'Name',
                      style: KLabelTextStyle,
                    ),
                    TextFormField(
                      decoration: buildInputDecoration(
                        labelText: 'Enter your full name',
                        showSuffix: false,
                      ),
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'Please Enter Name';
                        }
                        return null;
                      },
                      onSaved: (String value) {
                        _name = value;
                      },
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Email',
                      style: KLabelTextStyle,
                    ),
                    TextFormField(
                      decoration: buildInputDecoration(
                        labelText: 'Enter your email address',
                        showSuffix: false,
                      ),
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'Please enter email';
                        }
                        if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                            .hasMatch(value)) {
                          return 'Please enter a valid Email';
                        }
                        return null;
                      },
                      onSaved: (String value) {
                        _email = value;
                      },
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Password',
                      style: KLabelTextStyle,
                    ),
                    Theme(
                      data: Theme.of(context).copyWith(
                        primaryColor: Color(0xFF030925),
                      ),
                      child: TextFormField(
                        controller: _password,
                        obscureText: obscure,
                        decoration: buildInputDecoration(
                          labelText: 'Enter a valid password',
                          showSuffix: true,
                          iconData: Icon(iconData),
                          onTap: () {
                            setState(() {
                              obscure = !obscure;
                              if (iconData == Icons.visibility) {
                                iconData = Icons.visibility_off;
                              } else {
                                iconData = Icons.visibility;
                              }
                            });
                          },
                        ),
                        validator: (String value) {
                          if (value.isEmpty) {
                            return 'Please a Enter Password';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Confirm Password',
                      style: KLabelTextStyle,
                    ),
                    Theme(
                      data: Theme.of(context).copyWith(
                        primaryColor: Color(0xFF030925),
                      ),
                      child: TextFormField(
                        controller: _confirmpassword,
                        obscureText: obscure,
                        decoration: buildInputDecoration(
                          labelText: 're-enter your password',
                          showSuffix: true,
                          iconData: Icon(iconData),
                          onTap: () {
                            setState(() {
                              obscure = !obscure;
                              if (iconData == Icons.visibility) {
                                iconData = Icons.visibility_off;
                              } else {
                                iconData = Icons.visibility;
                              }
                            });
                          },
                        ),
                        validator: (String value) {
                          if (value.isEmpty) {
                            return 'Please re-enter password';
                          }
                          if (_password.text != _confirmpassword.text) {
                            return "Passwords don\'t match";
                          }
                          return null;
                        },
                        onSaved: (String value) {
                          _passwordToSave = value;
                        },
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.1,
                    ),
                    Hero(
                      tag: 'try',
                      child: ButtonContainer(
                        buttonTitle: 'Sign up',
                        onPressed: () {
                          if (_formKey.currentState.validate()) {
                            _formKey.currentState.save();
                            print(
                                "successful___________________________________________---");
                                print(_name);
                                print(_email);
                                print(_passwordToSave);
                            return;
                          } else {
                            print(
                                "UnSuccessfull__________________________________----");
                          }
                        },
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'have an account?',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontFamily: 'SourceSansPro',
                            color: Color(0xFF030925),
                          ),
                        ),
                        SizedBox(width: 5),
                        GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, Login.id);
                            },
                            child: Text(
                              'Sign in',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontFamily: 'SourceSansProBold',
                                color: Color(0xFF030925),
                              ),
                            ))
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
