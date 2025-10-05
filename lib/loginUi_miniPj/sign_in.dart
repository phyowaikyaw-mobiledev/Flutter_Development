    import 'package:flutter/material.dart';
import 'package:flutter_dev_collection/loginUi_miniPj/sign_up.dart';

    class SignIn extends StatelessWidget {
      const SignIn({super.key});

      @override
      Widget build(BuildContext context) {
        return Scaffold(
          body: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Positioned(
                right: -20,
                top: -50,
                child: CircleAvatar(
                  backgroundColor: Colors.indigo.shade100,
                  radius: 80,
                ),
              ),
              Positioned(
                right: -25,
                top: -65,
                child: CircleAvatar(
                  backgroundColor: Colors.indigo,
                  radius: 72,
                ),
              ),
              Positioned(
                left: 20,
                bottom: -70,
                child: CircleAvatar(
                  backgroundColor: Colors.indigo.shade100,
                  radius: 80,
                ),
              ),
              Positioned(
                left: 20,
                bottom: -80,
                child: CircleAvatar(
                  backgroundColor: Colors.indigo,
                  radius: 70,
                ),
              ),
              Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                   decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          color: Colors.black12,
                          offset: Offset(1, 1),
                          blurStyle: BlurStyle.outer
                        )
                      ]
                   ),
                    margin: EdgeInsets.only(right: 40),
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 28),
                    width: 350,
                    height: 500,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text("SIGN IN",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.indigo
                          ),
                        ),
                        SizedBox(height: 40,),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 10,
                                  color: Colors.black12,
                                  offset: Offset(1, 1),
                                  blurStyle: BlurStyle.outer
                              )
                            ]
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              isDense: true,
                              border: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              contentPadding: EdgeInsets.all(0),
                              icon: Icon(Icons.person , color: Colors.grey,),
                              hintText: 'Name',
                              hintStyle: TextStyle(
                                fontSize: 16,
                                color: Colors.grey
                              )
                            ),
                          ),

                        ),
                        SizedBox(height: 30),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 10,
                                    color: Colors.black12,
                                    offset: Offset(1, 1),
                                    blurStyle: BlurStyle.outer
                                )
                              ]
                          ),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                isDense: true,
                                border: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                contentPadding: EdgeInsets.all(0),
                                icon: Icon(Icons.vpn_key,color: Colors.grey,),
                                hintText: 'Password',
                              hintStyle: TextStyle(
                                fontSize: 16,
                                color: Colors.grey
                              )
                            ),
                          ),
                        ),
                        SizedBox(height: 30),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.indigo,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(),
                            elevation: 5,
                          ),
                            onPressed: (){},
                            child: Text("SIGN IN")),
                        SizedBox(height: 24,),
                        Center(
                          child: TextButton(
                            onPressed: () {  },
                            child: Text("Forgot Password?",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,),
                          ),
                            ),
                        ),
                        SizedBox(height: 24,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don't have an account?",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                            TextButton(onPressed: (){
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(builder: (_) => SignUp()
                                  ));
                            },
                                child: Text("SIGN UP",
                                style: TextStyle(
                                  color: Colors.indigo
                                ),
                                ))
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        );
      }
    }
