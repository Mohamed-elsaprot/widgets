import 'package:flutter/material.dart';

class RangeSlider_Widget extends StatefulWidget {
  const RangeSlider_Widget({Key? key}) : super(key: key);

  @override
  State<RangeSlider_Widget> createState() => _RangeSlider_WidgetState();
}

class _RangeSlider_WidgetState extends State<RangeSlider_Widget> {
  RangeValues rangeValues= const RangeValues(.1, .2);
  @override
  Widget build(BuildContext context) {
    RangeLabels rangeLabels = RangeLabels(rangeValues.start.toString(), rangeValues.end.toString());
    return Center(
      child: RangeSlider(
        values: rangeValues,
        labels: rangeLabels,
        divisions: 20,
        onChanged: (RangeValues value) { rangeValues=value; setState(() {});},

      ),
    );
  }
}
