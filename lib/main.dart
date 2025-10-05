import 'package:flutter/material.dart';
import 'package:flutter_dev_collection/buildcontext_main.dart';
import 'package:flutter_dev_collection/loginUi_miniPj/sign_in.dart';
import 'package:flutter_dev_collection/loginUi_miniPj/sign_up.dart';
import 'package:flutter_dev_collection/movieUI_app/movie_page.dart';
import 'package:flutter_dev_collection/widgets/ex31_navigationbar.dart';
import 'package:flutter_dev_collection/widgets/ex32_navigationrail.dart';
import 'package:flutter_dev_collection/navigation/screen_a.dart';
import 'package:flutter_dev_collection/widgets/ex10_column.dart';
import 'package:flutter_dev_collection/widgets/ex11_stack.dart';
import 'package:flutter_dev_collection/widgets/ex12_positioned.dart';
import 'package:flutter_dev_collection/widgets/ex13_expanded_flexible.dart';
import 'package:flutter_dev_collection/widgets/ex14_profile_creation.dart';
import 'package:flutter_dev_collection/widgets/ex15_dividers.dart';
import 'package:flutter_dev_collection/widgets/ex16_gesturedetector.dart';
import 'package:flutter_dev_collection/widgets/ex17_inkandinkwell.dart';
import 'package:flutter_dev_collection/widgets/ex18_listtile.dart';
import 'package:flutter_dev_collection/widgets/ex19_circleavatar.dart';
import 'package:flutter_dev_collection/widgets/ex20_singlechildscrollview.dart';
import 'package:flutter_dev_collection/widgets/ex21_listview.dart';
import 'package:flutter_dev_collection/widgets/ex22_listview_builder.dart';
import 'package:flutter_dev_collection/widgets/ex23_gridview_gridviewbuilder.dart';
import 'package:flutter_dev_collection/widgets/ex24_gridtile.dart';
import 'package:flutter_dev_collection/widgets/ex25_gridtilebar.dart';
import 'package:flutter_dev_collection/widgets/ex26_wrap.dart';
import 'package:flutter_dev_collection/widgets/ex27_statefulwidget.dart';
import 'package:flutter_dev_collection/widgets/ex28_stateful_lifecycle.dart';
import 'package:flutter_dev_collection/widgets/ex29_floating_action_button.dart';
import 'package:flutter_dev_collection/widgets/ex2_text.dart';
import 'package:flutter_dev_collection/widgets/ex30_bottom_nav.dart';
import 'package:flutter_dev_collection/widgets/ex33_drawer.dart';
import 'package:flutter_dev_collection/widgets/ex34_indexedstack.dart';
import 'package:flutter_dev_collection/widgets/ex35_popupmenubutton.dart';
import 'package:flutter_dev_collection/widgets/ex36_circularprogressindicator.dart';
import 'package:flutter_dev_collection/widgets/ex37_linearprogressindicator.dart';
import 'package:flutter_dev_collection/widgets/ex38_slider.dart';
import 'package:flutter_dev_collection/widgets/ex39_textfield.dart';
import 'package:flutter_dev_collection/widgets/ex3_container.dart';
import 'package:flutter_dev_collection/widgets/ex40_textformfield.dart';
import 'package:flutter_dev_collection/widgets/ex41_form.dart';
import 'package:flutter_dev_collection/widgets/ex42_radio.dart';
import 'package:flutter_dev_collection/widgets/ex43_checkbox.dart';
import 'package:flutter_dev_collection/widgets/ex44_switch.dart';
import 'package:flutter_dev_collection/widgets/ex45_dialog.dart';
import 'package:flutter_dev_collection/widgets/ex46_bottomsheet.dart';
import 'package:flutter_dev_collection/widgets/ex47_snackbar.dart';
import 'package:flutter_dev_collection/widgets/ex48_tabbar.dart';
import 'package:flutter_dev_collection/widgets/ex49_pageview.dart';
import 'package:flutter_dev_collection/widgets/ex4_images.dart';
import 'package:flutter_dev_collection/widgets/ex6_icons.dart';
import 'package:flutter_dev_collection/widgets/ex7_card.dart';
import 'package:flutter_dev_collection/widgets/ex8_buttons.dart';
import 'package:flutter_dev_collection/widgets/ex9_row.dart';

import 'navigation/screen_b.dart';
import 'navigation/screen_c.dart';

void main (){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Course',
      debugShowCheckedModeBanner: false,  // for slide debug banner
      home:MoviePage(),

      // if open this will show error
      // initialRoute: 'screenC', //you will see screenC in initialRoute,

      //onGenerateRoute
      // onGenerateInitialRoutes: (initialRoute)=>[
      //   MaterialPageRoute(builder: (_) => ScreenC()),],
      // onGenerateRoute:(settings) {
      //   switch (settings.name){
      //     case 'screenA':
      //       return MaterialPageRoute(builder: (_)=> ScreenA());
      //     case 'screenB':
      //       return MaterialPageRoute(
      //           builder: (_)=> ScreenB(
      //               data: settings.arguments as String));
      //     case 'screenC' :
      //       return MaterialPageRoute(builder: (_) => ScreenC());
      //     default:
      //       return MaterialPageRoute(builder: (_) => ScreenA());
      //   }
      // },
      //
      //
      // Named Route ->
      // routes: {
      //   'screenA' : (context) => ScreenA(),
      //   'screenB' : (context) => ScreenB(data: "*****"),
      //   'screenC' : (context) => ScreenC(),
      // },
    );

  }
}
