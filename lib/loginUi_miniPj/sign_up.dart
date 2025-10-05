import 'package:flutter/material.dart';
import 'package:flutter_dev_collection/loginUi_miniPj/sign_in.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Positioned(
            right: 70,
            top: -80,
            child: CircleAvatar(
              backgroundColor: Colors.indigo.shade100,
              radius: 80,
            ),
          ),
          Positioned(
            right: 100,
            top: -80,
            child: CircleAvatar(
              backgroundColor: Colors.indigo,
              radius: 72,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                      color: Colors.black12,
                      offset: Offset(1, 1),
                      blurStyle: BlurStyle.outer,
                    )
                  ],
                ),
                margin: const EdgeInsets.only(right: 40),
                padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 30),
                width: 400,
                height: 700,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      "SIGN UP",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo,
                      ),
                    ),
                    const SizedBox(height: 50),

                    //  Name field
                    const MyTextField(
                      hintText: "Name",
                      iconData: Icons.person,
                    ),
                    const SizedBox(height: 40),

                    // Mail field
                    const MyTextField(
                      hintText: "Mail",
                      iconData: Icons.mail,
                    ),
                    const SizedBox(height: 40),

                    //PhoneNumber field
                    const MyTextField(
                        hintText: "Mobile Number",
                        iconData: Icons.phone),
                    const SizedBox(height: 40),

                    //  Password field
                    const MyTextField(
                      hintText: "Password",
                      iconData: Icons.vpn_key,
                      isObsecureText: true,
                    ),
                    const SizedBox(height: 50,),

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.indigo,
                        foregroundColor: Colors.white,
                        shape: const RoundedRectangleBorder(),
                        elevation: 5,
                      ),
                      onPressed: () {},
                      child: const Text("SIGN UP"),
                    ),

                    const SizedBox(height: 50),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Already have an account?",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(builder: (_)=>SignIn() ));
                          },
                          child: const Text(
                            "SIGN IN",
                            style: TextStyle(color: Colors.indigo),
                          ),
                        )
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

//  Reusable TextField widget
class MyTextField extends StatelessWidget {
  const MyTextField({
    super.key,
    required this.hintText,
    required this.iconData,
    this.isObsecureText = false,
  });

  final String hintText;
  final IconData iconData;
  final bool isObsecureText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            color: Colors.black12,
            offset: const Offset(1, 1),
            blurStyle: BlurStyle.outer,
          )
        ],
      ),
      child: TextField(
        obscureText: isObsecureText,
        decoration: InputDecoration(
          isDense: true,
          border: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          contentPadding: EdgeInsets.zero,
          icon: Icon(iconData, color: Colors.grey),
          hintText: hintText,
          hintStyle: const TextStyle(fontSize: 16, color: Colors.grey),
        ),
      ),
    );
  }
}
