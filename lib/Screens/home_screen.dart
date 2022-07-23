import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _zker = 'الحمد لله';
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff90C8AC),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/Info_screen');
          },
          icon: Icon(Icons.info_outlined),
        ),
        actions: [
          PopupMenuButton<String>(
            onSelected: (String value) {
              if (_zker != value) {
                setState(() {
                  _zker = value;
                  _counter = 0;
                });
              }
            },
            offset: const Offset(20, 40),
            icon: const Icon(Icons.arrow_downward),
            itemBuilder: (BuildContext context) => [
              PopupMenuItem(
                value: 'أستغفر الله',
                child: Text(
                  'أستغفر الله',
                  style: GoogleFonts.amiri(
                    color: Color(0xff73A9AD),
                  ),
                ),
              ),
              PopupMenuDivider(),
              PopupMenuItem(
                  value: 'الحمد لله',
                  child: Text(
                    'الحمد لله',
                    style: GoogleFonts.amiri(
                      color: Color(0xff73A9AD),
                    ),
                  )),
              PopupMenuDivider(),
              PopupMenuItem(
                  value: 'الله أكبر',
                  child: Text(
                    'الله أكبر',
                    style: GoogleFonts.amiri(
                      color: Color(0xff73A9AD),
                    ),
                  )),
            ],
          ),
        ],
        title: Text(
          'أذكار',
          style: GoogleFonts.amiri(fontSize: 26),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Color(0xffC4DFAA),
                ),
                child: Text(
                  '$_counter',
                  style: GoogleFonts.amiri(
                    color: Colors.white,
                    fontSize: 26,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                alignment: Alignment.center,
                height: 70,
                width: 330,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffC4DFAA),
                ),
                child: Text(
                  '$_zker',
                  style: GoogleFonts.amiri(
                    color: Colors.white,
                    fontSize: 26,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xffC4DFAA),
                        elevation: 0,
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(30),
                      ),
                      onPressed: () {
                        setState(() {
                          _counter++;
                        });
                      },
                      child: Text(
                        'تسبيح',
                        style: GoogleFonts.amiri(
                            color: Colors.white, fontSize: 24),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xffC4DFAA),
                        elevation: 0,
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(30),
                      ),
                      onPressed: () {
                        setState(() {
                          _counter = 0;
                        });
                      },
                      child: Text(
                        'تصفير',
                        style: GoogleFonts.amiri(
                            color: Colors.white, fontSize: 24),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
