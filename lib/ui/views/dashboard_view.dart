import 'package:admin_dashboard/ui/labels/custom_labels.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/auth_provider.dart';
import '../cards/white_card.dart';

class DashboardView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final user  = Provider.of<AuthProvider>(context).user!;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical:10),
      child: ListView(
       physics: ClampingScrollPhysics(), 
        children: [
          Text('Dasboard view', style: CustomLabels.h1),


          SizedBox(height: 10),

          WhiteCard(
            title: user.nombre,
            child: Text(user.correo)
          )
        ],
      ),

    );
  }
}
