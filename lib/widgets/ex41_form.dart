    import 'dart:math';

import 'package:flutter/material.dart';

    class Ex41Form extends StatefulWidget {
      const Ex41Form({super.key});

      @override
      State<Ex41Form> createState() => _Ex41FormState();
    }

    class _Ex41FormState extends State<Ex41Form> {

      late final TextEditingController controller;
      late final GlobalKey<FormState> formKey;

      @override
  void initState() {
      controller = TextEditingController();
      formKey = GlobalKey<FormState>();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: Text("TextFormFiled With Form"),
          ),
          body: Center(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Form(
                key: formKey,
                canPop: false,
                //the duty of canPop is asking to do Pop , if assign false => you can't exit with back key.
                onPopInvoked: (value){
                    print("canPop $value");
                },
                child: Column(
                  children: [
                    TextFormField(
                      controller: controller ,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value){
                        if (value == null || value.isEmpty){
                          return "TextField cannot be Empty" ;
                        }else if (value !=' Andrew '){
                          return "This text is not Andrew ";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 15,),
                    ElevatedButton(
                        onPressed: (){
                          if(formKey.currentState!.validate()){
                            debugPrint(controller.text);
                            debugPrint("submitted");
                          }else {
                            debugPrint("Invalid form cannot submmit");
                          }
                          debugPrint(controller.text);

                        },
                        child: Text("Submit")
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      }
    }
