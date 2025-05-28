import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeadlineWidget extends StatelessWidget {
  final String headline;
  const HeadlineWidget({super.key, required this.headline});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: <Widget>[
          Text(headline, style: Theme.of(context).textTheme.headlineLarge),
          Spacer(),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
              minimumSize: Size(50, 30),
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              alignment: Alignment.centerLeft,
            ),
            child: Text(
              "See All",
              style: GoogleFonts.roboto(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Color(0xff13459E),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
