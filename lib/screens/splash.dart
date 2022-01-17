import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:signtranslator/providers/authprovider.dart';
import 'package:signtranslator/utils/screen_utils.dart';

class AuthLanding extends StatefulWidget {
  AuthLanding({Key? key}) : super(key: key);

  @override
  State<AuthLanding> createState() => _AuthLandingState();
}

class _AuthLandingState extends State<AuthLanding> {
  String email = '';
  String password = '';

  @override
  void initState() {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      // Provider.of<AuthNotifier>(context, listen: false)
      //     .checkCurrentUser(context);
      Future.delayed(Duration(seconds: 5), () {
        Navigator.of(context).pushNamed('/home');
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromRGBO(255, 169, 132, 1),
          Color.fromRGBO(255, 121, 63, 1),
        ])),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(200),
                child: Image(
                  height: MediaQuery.of(context).size.height * 0.28,
                  width: MediaQuery.of(context).size.width * 0.55,
                  image: AssetImage("assets/images/Logo.gif"),
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Deaf Talkie',
                style: GoogleFonts.poppins(
                  fontSize: 35,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // const Text(
              //   'Translator',
              //   style: TextStyle(
              //     fontSize: 30,
              //     color: Colors.white,
              //     fontWeight: FontWeight.bold,
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}

// class Myclipper extends CustomClipper<Rect> {
//   Rect getClip(Size size) {
//     return Rect.fromLTWH(30, 30, 0, 200);
//   }

//   @override
//   bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
//     // TODO: implement shouldReclip
//     throw UnimplementedError();
//   }
// }
