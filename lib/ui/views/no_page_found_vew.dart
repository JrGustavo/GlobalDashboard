import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NoPageFoundView extends StatelessWidget {
  const NoPageFoundView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text (
        '404 - Pagina no encontrada',
            style: GoogleFonts.roboto(
            fontSize: 50,
              fontWeight: FontWeight.bold
        ) ,
        ),
      ),
    );
  }
}
