      import 'package:flutter/material.dart';

    class Ex40Textformfield extends StatefulWidget {
      const Ex40Textformfield({super.key});
    
      @override
      State<Ex40Textformfield> createState() => _Ex40TextformfieldState();
    }
    
    class _Ex40TextformfieldState extends State<Ex40Textformfield> {

      late final TextEditingController controller;

      @override
  void initState() {
    controller = TextEditingController();
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
            title: Text("TextFormField"),
            centerTitle: true,
          ),
          body: Center(
            child: Padding(
                padding: EdgeInsets.all(16.0),
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
                      debugPrint(controller.text);

                    },
                    child: Text("Submit")
                )
              ],
            ),
            ),
          ),
        );
      }
    }
    