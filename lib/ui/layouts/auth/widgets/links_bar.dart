import 'package:flutter/material.dart';

import '../../../buttons/link_text.dart';

class LinkBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      color: Colors.black,
      height: (size.width >1000) ? size.height * 0.07 : null,
      child: Wrap(
        alignment: WrapAlignment.center ,
        children: [
          LinkText(text: 'Hola', onPressed: () => print('about'),),
          LinkText(text: 'Canela'),
          LinkText(text: 'Mei'),
          LinkText(text: 'Dulfina'),
          LinkText(text: 'nino'),
          LinkText(text: 'nina'),
          LinkText(text: 'carey'),
        ],
      )

    );
  }
}
