import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // SvgPicture.asset(
          //   'assets/images/background.svg',
          //   alignment: Alignment.center,
          //   width: MediaQuery.of(context).size.width,
          //   height: MediaQuery.of(context).size.height,
          // ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            'Hello, User !',
                            textAlign: TextAlign.left,
                            style: GoogleFonts.plusJakartaSans(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'What do you wanna learn today?',
                            textAlign: TextAlign.left,
                            style: GoogleFonts.plusJakartaSans(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 15),
                      const Image(
                        image: AssetImage('assets/images/profile_picture.png'),
                        width: 85,
                        height: 85,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 17,
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        suffix: IconButton(
                          color: Colors.grey,
                          onPressed: () {},
                          icon: const Icon(Icons.search_rounded),
                        ),
                        // contentPadding: EdgeInsets.symmetric(vertical: 10),

                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(color: Colors.grey),
                        ),
                        hintText: 'Search',
                        fillColor: Colors.grey,
                        focusColor: Colors.blueGrey,
                      ),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your text';
                        }
                        return null;
                      },
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    // style: TextButton.styleFrom(
                    //   padding: EdgeInsets.symmetric(vertical: 20),
                    // ),
                    child: Container(
                      width: 600,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x3f000000),
                            offset: Offset(0, 4),
                            blurRadius: 2,
                          ),
                        ],
                      ),
                      child: Center(
                        child: Image(
                          image: AssetImage('assets/images/aida.png'),
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
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
