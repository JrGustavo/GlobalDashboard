import 'package:admin_dashboard/ui/labels/custom_labels.dart';
import 'package:flutter/material.dart';

import '../cards/white_card.dart';

class BlankView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical:10),
      child: ListView(
        physics: ClampingScrollPhysics(),
        children: [
          Text('Blank view', style: CustomLabels.h1),


          SizedBox(height: 10),

          WhiteCard(
              title: 'sales manetcada fria',
              child: Text('Hola mantecada')
          )
        ],
      ),

    );
  }
}
