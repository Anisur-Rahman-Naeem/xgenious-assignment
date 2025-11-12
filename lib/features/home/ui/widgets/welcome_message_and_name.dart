import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class welcomeMessageandName extends StatelessWidget {
  const welcomeMessageandName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Welcome Back!',
        style: GoogleFonts.inter(
          fontSize: 14,
          fontWeight: FontWeight.w400
        ),),
        Text('Leslie Alexander',
        style: GoogleFonts.poppins(
          fontSize: 20,
          fontWeight: FontWeight.w500
        ),),
      ],
    );
  }
}
