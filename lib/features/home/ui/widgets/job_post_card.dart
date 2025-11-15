import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xgenious_assignment/app/assets_path.dart';
import 'package:xgenious_assignment/features/home/ui/widgets/price_banner.dart';

class JobPostCard extends StatelessWidget {
  const JobPostCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.1,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 18,
                        backgroundImage: AssetImage(
                          AssetsPath.profileAvatarImage,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Posted 2 years ago',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(6), // space inside the circle
                  decoration: BoxDecoration(
                    color: Color(0xFFF2F2F2), // background color of circle
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.favorite_outline, // heart icon
                    size: 16, // size of heart
                  ),
                ),
              ],
            ),
            SizedBox(height: 8,),
            Text('Logo Design for Business Loan Brokerage fora agency',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 8,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFE6F5F0),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8,bottom: 8, left: 13,right: 13),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.work_outline,size: 13,),
                        SizedBox(width: 5,),
                        Text('MidLevel',style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),)
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 5,),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFF2F2F2),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8,bottom: 8, left: 13,right: 13),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Fixed',style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color(0xFF6A3BE8)
                        ),)
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 5,),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFF2F2F2),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8,bottom: 8, left: 13,right: 13),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('\u00B7',style: TextStyle(
                            fontSize: 35,
                            height: 0.4
                        ),),
                        SizedBox(width: 2,),
                        Text('Sponsored',style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color(0xFF3B4759)
                        ),)
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8,),
            pricebanner(title: 'Fixed price', price: '126', width: 410,)
          ],
        ),
      ),
    );
  }
}