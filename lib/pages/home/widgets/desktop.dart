import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_web/helpers/style.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/constants.dart';
import '../../../helpers/responsive.dart';
import '../../../widgets/bottom_text_widget.dart';
import '../../../widgets/custom_button.dart';

class DesktopScreen extends StatelessWidget {
  const DesktopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      constraints: const BoxConstraints(maxWidth: 1440),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            width: screenSize.width / 2,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.only(bottom: 15),
                    child: Text(
                      "Because you deserve better",
                      style: GoogleFonts.roboto(
                          color: active,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  RichText(
                      text: TextSpan(
                          children: [
                        TextSpan(text: "Get noticed for "),
                        TextSpan(
                            text: "who",
                            style: GoogleFonts.roboto(color: active)),
                        TextSpan(text: " you are "),
                        TextSpan(
                            text: "not what",
                            style: GoogleFonts.roboto(color: active)),
                        TextSpan(text: " you look like."),
                      ],
                          style: GoogleFonts.roboto(
                              fontSize: ResponsiveWidget.isMediumScreen(context)
                                  ? 38
                                  : 58,
                              fontWeight: FontWeight.bold))),
                  Visibility(
                    child: Text(
                      mainParagraph,
                      style: GoogleFonts.roboto(
                          fontSize: 20, letterSpacing: 1.5, height: 1.5),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(.1),
                              offset: Offset(0, 40),
                              blurRadius: 80)
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: screenSize.width / 4,
                          padding: const EdgeInsets.only(left: 8),
                          child: const TextField(
                            decoration: InputDecoration(
                                icon: Icon(Icons.email_outlined),
                                hintText: "Enter your email",
                                border: InputBorder.none),
                          ),
                        ),
                        const CustomButton(
                          text: "Get started",
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: screenSize.height / 14),
                  Visibility(
                    visible: screenSize.height > 700,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const <Widget>[
                        BottomText(
                          mainText: "15k+",
                          secondaryText: "Dates and matches\nmade everyday",
                        ),
                        BottomText(
                          mainText: "1,456",
                          secondaryText: "New members\nsignup every day",
                        ),
                        BottomText(
                          mainText: "1M+",
                          secondaryText: "Members from\naround the world",
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            width: screenSize.width / 2,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: screenSize.width / 28,
                  ),
                  Image.asset(
                    "assets/images/img.png",
                    width: screenSize.width / 1.9,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
