import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoadMoreButton extends StatelessWidget {
  const LoadMoreButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: SizedBox(
        width: 340,
        child: Card(
          color: Colors.white,
          elevation: 0.1,
          child: Padding(
            padding: EdgeInsets.only(top: 15, bottom: 15),
            child: Align(
              alignment: Alignment.center,
              child: Text('Load More',style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),),
            ),),
        ),
      ),
    );
  }
}
