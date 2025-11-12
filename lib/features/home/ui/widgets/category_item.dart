import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xgenious_assignment/app/assets_path.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      height: 94,
      width: 106,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 8,
          bottom: 8,
          left: 8,
          right: 12,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              AssetsPath.categoryLogoImage,
              height: 24,
              width: 24,
            ),
            SizedBox(height: 10,),
            Text('Digital Marketing',style: GoogleFonts.poppins(
              fontWeight: FontWeight.w400,
              fontSize: 12
            ),)
          ],
        ),
      ),
    );
  }
}