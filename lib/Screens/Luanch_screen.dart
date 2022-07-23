import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LuanchScreen extends StatefulWidget {
  const LuanchScreen({Key? key}) : super(key: key);

  @override
  State<LuanchScreen> createState() => _LuanchScreenState();
}

class _LuanchScreenState extends State<LuanchScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
       Navigator.pushReplacementNamed(context, '/Home_screen');
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color(0xff90C8AC),
            Color(0xff73A9AD),
          ],
        )),
        child:  Text(' تطبيق أذكار',style: GoogleFonts.amiri(
          fontSize: 30,
          color: Colors.white,
        ),),
      ),
    );
  }
}
