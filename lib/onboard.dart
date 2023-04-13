import 'package:amik_learn/main.dart';
import 'package:amik_learn/signin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';

class onBoard extends StatelessWidget {
  const onBoard({super.key});

  // Future<void> loadFont() async {
  //   await Future.wait([
  //     // Add more fonts here if you have them
  //     // Example:
  //     // rootBundle.load('assets/fonts/MyOtherFont-Regular.ttf'),
  //     rootBundle.load('assets/fonts/PlusJakartaSans-Regular.ttf'),
  //     rootBundle.load('assets/fonts/PlusJakartaSans-Bold.ttf'),
  //     rootBundle.load('assets/fonts/PlusJakartaSans-Light.ttf'),
  //   ].map((future) => future
  //       .then((font) => FontLoader('')..addFont(font as Future<ByteData>))));
  // }
  // constructor buat carousel
  final List<ItemWidget> carouselItems = const [
    ItemWidget(
        img: 'assets/images/instant_access.svg',
        title: 'Instant Access',
        desc:
            'Full access to all course materials in the form of text, images, videos, or audio online'),
    ItemWidget(
        img: 'assets/images/stay_informed.svg',
        title: 'Stay Informed',
        desc:
            'Never miss important announcements from lecturers or faculties with our notification system.'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SvgPicture.asset(
            'assets/images/background.svg',
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          Center(
            child: Padding(
              // ignore: prefer_const_constructors
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlutterCarousel(
                        options: CarouselOptions(
                          height: 400.0,
                          showIndicator: true,
                          slideIndicator: CircularSlideIndicator(),
                          autoPlay: true,
                          autoPlayInterval: const Duration(seconds: 8),
                          enableInfiniteScroll: true,
                          autoPlayCurve: Curves.easeInOut,
                          autoPlayAnimationDuration:
                              const Duration(milliseconds: 800),
                        ),
                        items: [
                          //spread the values one by one
                          ...carouselItems,
                        ]),
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
                            colors: <Color>[
                              Color(0xbf0391de),
                              Color(0xbf03e5b7)
                            ],
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
                          color: Colors.white,
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
                            'Sign Up',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.plusJakartaSans(
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                              height: 1.26,
                              letterSpacing: 0.16,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 100,
            right: 50,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignInScreen()),
                );
              },
              child: Text(
                'Skip',
                textAlign: TextAlign.center,
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                  color: Colors.blue,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ItemWidget extends StatelessWidget {
  final String img;
  final String title;
  final String desc;
  const ItemWidget({
    Key? key,
    required this.img,
    required this.title,
    required this.desc,
  }) : super(key: key);

  //SvgPicture diextract widget diatas
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          this.img,
          height: 250,
          width: 250,
        ),
        const SizedBox(height: 20),
        Text(
          this.title,
          textAlign: TextAlign.center,
          style: GoogleFonts.plusJakartaSans(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text(
            this.desc,
            textAlign: TextAlign.center,
            style: GoogleFonts.plusJakartaSans(
              fontSize: 12,
              fontWeight: FontWeight.normal,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
