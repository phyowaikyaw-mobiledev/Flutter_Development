  import 'package:flutter/material.dart';

  class Ex39Textfield extends StatefulWidget {
    const Ex39Textfield({super.key});

  @override
  State<Ex39Textfield> createState() => _Ex39TextfieldState();
}

class _Ex39TextfieldState extends State<Ex39Textfield> {
     // final FocusNode focusNode = FocusNode();
      late final FocusNode focusNode;
      late final TextEditingController controller;

      @override
  void initState() {
    super.initState();
    focusNode = FocusNode();
    controller = TextEditingController();
    // focusNode.requestFocus();
  }

  @override
  void dispose() {
        controller.dispose();
        focusNode.dispose();
    super.dispose();
  }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("TextField"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                TextField(
                  focusNode: focusNode,
                  controller: controller,
                  decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)
                  ),
                    // icon: Icon(Icons.person),
                    labelText: 'Gmail',
                    hintText: 'Enter Your Gmail',
                    helperText: 'Example : andrewtechstudio@gmail.com',
                    // errorText: 'Name cannot empty',
                    isDense: true,
                    prefixIcon: Icon(Icons.email),
                    suffixIcon: Icon(Icons.arrow_back),
                    // fillColor: Colors.red,
                    // filled: true,
                  ),
                ),
                SizedBox(height: 15,),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)
                    ),
                    // icon: Icon(Icons.person),
                    labelText: 'Password',
                    hintText: 'Enter Your Password',
                     helperText: 'Password must be at least 8 characters',
                    // errorText: 'Name cannot empty',
                    isDense: true,
                    prefixIcon: Icon(Icons.vpn_key),
                    suffixIcon: Icon(Icons.visibility_off),
                    // fillColor: Colors.red,
                    // filled: true,
                  ),
                  keyboardType: TextInputType.emailAddress,
                  // obscureText: true,
                  maxLines: null,
                  onTapOutside: (v){
                    focusNode.unfocus();
                  },
                  onChanged: (value){
                    print("value $value");
                  },
                  // obscuringCharacter: "*******",
                ),
                SizedBox(height: 20,),
                ElevatedButton(
                    onPressed: (){
                      debugPrint(controller.text);
                      controller.clear();
                    },
                    child: Text("Login")),

              ],
            ),
          ),
        ),
      );
    }
}
