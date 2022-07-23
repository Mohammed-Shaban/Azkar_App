import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'عن التطبيق',
          style: GoogleFonts.amiri(fontSize: 26),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
      backgroundColor: Color(0xff90C8AC),
      body: Center(
        child: Text(
          'تطبيق اذكار المسلم ',
          style: GoogleFonts.amiri(
            fontSize: 30,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
