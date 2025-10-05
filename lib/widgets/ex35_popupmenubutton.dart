  import 'package:flutter/material.dart';

  class Ex35Popupmenubutton extends StatelessWidget {
    const Ex35Popupmenubutton({super.key});
  
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar:AppBar(
          title: Text("PopupMenuButton"),
          actions: [
            PopupMenuButton(
                itemBuilder: (context) => [
                  PopupMenuItem(
                    value: "Edit",
                      onTap: (){
                      debugPrint("EditononTap");
                      },
                      child: Text("Edit")),
                  PopupMenuItem(
                      value: "Delete",
                      onTap: (){
                        debugPrint("DeleteonTap");
                      },
                      child: Text("Delete")),
                ],
            position:PopupMenuPosition.under ,
              onOpened:(){
                  debugPrint ("Open");
              },
              onCanceled: (){
                  debugPrint("Cancel");
              },
              onSelected: (value){
                  debugPrint("selected");
                  if (value == "edit"){
                    //go to Edit Page
                  }else
                    {
                      //go to delete Page
                    }
              },

            )
          ],
        ),
      );
    }
  }
  