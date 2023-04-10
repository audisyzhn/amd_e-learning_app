import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool passenable = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Transform.scale(
            scaleX: -1,
            scaleY: -1,
            child: SvgPicture.asset(
              'assets/images/background.svg',
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    children: [
                      const Image(
                        image: AssetImage('assets/images/amik_logo.png'),
                        width: 150,
                        height: 150,
                      ),
                      const SizedBox(width: 15),
                      Column(
                        children: [
                          Text(
                            'Welcome Back',
                            textAlign: TextAlign.left,
                            style: GoogleFonts.plusJakartaSans(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'Please sign in to continue',
                            textAlign: TextAlign.left,
                            style: GoogleFonts.plusJakartaSans(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  TextFormField(
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),
                    decoration: const InputDecoration(
                      hintText: 'Enter your username',
                      labelText: 'Username',
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your text';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    obscureText: passenable,
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                        hintText: 'Enter your password',
                        labelText: 'Password',
                        suffix: IconButton(
                            color: Colors.black54,
                            onPressed: () {
                              //add Icon button at end of TextField
                              setState(() {
                                //refresh UI
                                if (passenable) {
                                  //if passenable == true, make it false
                                  passenable = false;
                                } else {
                                  passenable =
                                      true; //if passenable == false, make it true
                                }
                              });
                            },
                            icon: Icon(passenable == true
                                ? Icons.remove_red_eye
                                : Icons.disabled_visible_outlined))),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your text';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      width: 335,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: const LinearGradient(
                          begin: Alignment(0, -1),
                          end: Alignment(0, 1),
                          colors: <Color>[Color(0xbf0391de), Color(0xbf03e5b7)],
                          stops: <double>[0, 1],
                        ),
                        boxShadow: [
                          const BoxShadow(
                            color: Color(0x3f000000),
                            offset: Offset(0, 4),
                            blurRadius: 2,
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          'Sign In',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                            height: 1.26,
                            letterSpacing: 0.16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
