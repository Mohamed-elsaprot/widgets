import 'package:flutter/material.dart';
import 'package:widgets/slivers/sliver_appbar.dart';
import 'package:widgets/training.dart';
import 'package:widgets/widgets/app_bar.dart';
import 'package:widgets/widgets/aspect_ratio.dart';
import 'package:widgets/widgets/auto_complete.dart';
import 'package:widgets/widgets/checkbox_list_tile.dart';
import 'package:widgets/widgets/chip.dart';
import 'package:widgets/widgets/circle_avatar.dart';
import 'package:widgets/widgets/close_button.dart';
import 'package:widgets/widgets/color_filtered.dart';
import 'package:widgets/widgets/column.dart';
import 'package:widgets/cupertino/cupertino_app.dart';
import 'package:widgets/widgets/data_table.dart';
import 'package:widgets/widgets/date_picker.dart';
import 'package:widgets/widgets/date_rangePicker.dart';
import 'package:widgets/widgets/defualt_text_style.dart';
import 'package:widgets/widgets/dismissible.dart';
import 'package:widgets/widgets/dragble.dart';
import 'package:widgets/widgets/drawer.dart';
import 'package:widgets/widgets/drop_down_button.dart';
import 'package:widgets/widgets/expanion_panel.dart';
import 'package:widgets/widgets/expansion_tile.dart';
import 'package:widgets/widgets/floatingActionButton.dart';
import 'package:widgets/widgets/flow_widget.dart';
import 'package:widgets/widgets/grid_tile.dart';
import 'package:widgets/widgets/ignor_pointer.dart';
import 'package:widgets/widgets/indexed_stak.dart';
import 'package:widgets/widgets/inter_active_viewer.dart';
import 'package:widgets/widgets/listWhell.dart';
import 'package:widgets/widgets/material_Banner.dart';
import 'package:widgets/widgets/navigationBar.dart';
import 'package:widgets/widgets/popUpMenue_button.dart';
import 'package:widgets/widgets/radio_button.dart';
import 'package:widgets/widgets/range_slider.dart';
import 'package:widgets/widgets/recordable_listview.dart';
import 'package:widgets/widgets/refresh_indecator.dart';
import 'package:widgets/widgets/richtext.dart';
import 'package:widgets/widgets/rotatedbox.dart';
import 'package:widgets/widgets/show_dialog.dart';
import 'package:widgets/widgets/slider.dart';
import 'package:widgets/widgets/snackbar.dart';
import 'package:widgets/widgets/spacer.dart';
import 'package:widgets/widgets/steper.dart';
import 'package:widgets/widgets/SwitchListTile.dart';
import 'package:widgets/widgets/tabBar.dart';
import 'package:widgets/widgets/table.dart';
import 'package:widgets/widgets/textButton.dart';
import 'package:widgets/widgets/timePicker.dart';
import 'package:widgets/widgets/toggleButton.dart';
import 'package:widgets/widgets/verticalDevider.dart';
import 'package:widgets/widgets/visibility.dart';
import 'package:widgets/widgets/willpopscop.dart';
import 'animation/animated_icon.dart';
import 'animation/animated_rotation.dart';
import 'animation/animated_switcher.dart';
import 'animation/tween_animation_builder.dart';
import 'cupertino/cupertino_actionSheet.dart';
import 'widgets/align.dart';
import 'animation/animated_builder.dart';
import 'animation/animated_cross_fade.dart';

void main() {

  runApp(const MyApp());
  //runApp(const Cupertino());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int index =0;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(
        scaffoldBackgroundColor: const Color.fromRGBO(18, 32, 47, 1),
        textTheme: ThemeData.dark().textTheme.copyWith(),
        appBarTheme: const AppBarTheme(backgroundColor: Colors.black54,
        )
      ),
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.grey,),
        body: null,
        drawer: DrawerWiget(),

        //body: SafeArea(child: MyDrawer()),
        // floatingActionButton: Flow_Widget(),
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        // floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      ),
    );
  }
}




