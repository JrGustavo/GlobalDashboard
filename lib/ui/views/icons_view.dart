import 'package:admin_dashboard/ui/labels/custom_labels.dart';
import 'package:flutter/material.dart';

import '../cards/white_card.dart';

class IconsView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical:10),
      child: ListView(
        physics: ClampingScrollPhysics(),
        children: [
          Text('Icons ', style: CustomLabels.h1),
          SizedBox(height: 10),

          Wrap(
            crossAxisAlignment: WrapCrossAlignment.start,
            direction: Axis.horizontal ,
            children: [
            
              WhiteCard(
                title: 'ac_unit_outlined',
                 child: Center(child: Icon(Icons.ac_unit_outlined)),
                 width:170
              ),

              WhiteCard(
                  title: 'access_alarm_rounded',
                  child: Center(child: Icon(Icons.access_alarm_rounded)),
                  width:170
              ),

              WhiteCard(
                  title: 'people_alt_outlined',
                  child: Center(child: Icon(Icons.people_alt_outlined)),
                  width:170
              ),
              WhiteCard(
                  title: 'alarm_add_rounded',
                  child: Center(child: Icon(Icons.alarm_add_rounded)),
                  width:170
              ),
              WhiteCard(
                  title: 'access_alarm_rounded',
                  child: Center(child: Icon(Icons.access_alarm_rounded)),
                  width:170
              ),
              WhiteCard(
                  title: 'card_travel',
                  child: Center(child: Icon(Icons.card_travel)),
                  width:170
              ),
                ],
          )

        ],
      ),

    );
  }
}
