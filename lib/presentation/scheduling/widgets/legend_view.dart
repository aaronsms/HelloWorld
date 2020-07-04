import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:helloworld/presentation/scheduling/widgets/legend_template.dart';

class LegendView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 25),
        child: Column(children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              const LegendTemplate(
                  color: Color(0xFF3AD29F), legend: "Available"),
              LegendTemplate(
                color: Palette.primaryColor,
                legend: "Selected By You",
              ),
              LegendTemplate(color: Colors.blue, legend: "Pending Requests"),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 22, top: 2),
            child: LegendTemplate(color: Colors.grey, legend: "Unavailable"),
          )
        ]));
  }
}
