import 'package:flutter/material.dart';
import 'package:nibab/Screens/authentication/signup.dart';
import 'package:nibab/components/button_container.dart';
import 'package:nibab/components/input_decorator.dart';
import 'package:nibab/constants/constants.dart';
import 'package:nibab/services/auth.dart';

class Login extends StatefulWidget {
  static const String id = 'login';
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool obscure = true;
  IconData iconData = Icons.visibility;

  String _email;
  String _password;

  final _formKey = GlobalKey<FormState>();

  AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.06,
                    ),
                    Text(
                      'Sign in',
                      style: TextStyle(
                          fontSize: 30.0,
                          fontFamily: 'SourceSansProBold',
                          color: Color(0xFF030925)),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Sign in to continue',
                      style: TextStyle(
                        color: Colors.grey.shade400,
                        fontSize: 18.0,
                        fontFamily: 'SourceSansPro',
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.13,
                      //width: MediaQuery.of(context).size.width,
                    ),
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
                    SizedBox(height: 40),
                    Text(
                      'Password',
                      style: KLabelTextStyle,
                    ),
                    Theme(
                      data: Theme.of(context).copyWith(
                        primaryColor: Color(0xFF030925),
                      ),
                      child: TextFormField(
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
                        onSaved: (String value) {
                          _password = value;
                        },
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.18,
                    ),
                    Hero(
                      tag: 'try',
                      child: ButtonContainer(
                        buttonTitle: 'Login',
                        onPressed: () async {
                          if (_formKey.currentState.validate()) {
                            _formKey.currentState.save();
                            dynamic result = await _auth.signInAnon();
                            if(result == null) {
                              print('error signing in___________________________');
                            } else {
                              print('signed in___________________________');
                              print(result.uid);
                             
                            }
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
                          'Don\'t have an account?',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontFamily: 'SourceSansPro',
                            color: Color(0xFF030925),
                          ),
                        ),
                        SizedBox(width: 5),
                        GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, Signup.id);
                            },
                            child: Text(
                              'Sign up',
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
