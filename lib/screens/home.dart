import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:signtranslator/screens/clippaths/lowerclip.dart';
import 'package:signtranslator/screens/clippaths/upperclip.dart';
import 'package:signtranslator/screens/login.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(30)),
                    gradient: LinearGradient(colors: [
                      Color.fromRGBO(255, 169, 132, 1),
                      Color.fromRGBO(255, 121, 63, 1),
                    ])),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.12,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.menu,
                      color: Colors.white,
                      size: MediaQuery.of(context).size.height * 0.05,
                    ),
                    Text(
                      " Deaf Talkie",
                      textAlign: TextAlign.left,
                      style: GoogleFonts.poppins(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.help,
                      color: Colors.white,
                      size: MediaQuery.of(context).size.height * 0.05,
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.25,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Color.fromRGBO(255, 169, 132, 60),
                  Color.fromRGBO(255, 121, 63, 60),
                ])),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
