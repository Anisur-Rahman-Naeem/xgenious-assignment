import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xgenious_assignment/app/assets_path.dart';
import 'package:xgenious_assignment/features/home/ui/widgets/price_banner.dart';

class Services extends StatelessWidget {
  const Services({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.3,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 220,
              height: 100,
              margin: EdgeInsets.symmetric(horizontal: 2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(8),topRight: Radius.circular(8)),
                image: DecorationImage(image: AssetImage(AssetsPath.productImage),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              width: 220,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 4),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.star_border,
                              color: Color(0xFF3B4759),
                              size: 17,),
                            SizedBox(width: 2,),
                            Text('4.5',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                              ),),
                            SizedBox(width: 3,),
                            Text('(23 reviews)',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Color(0xFF3B4759)
                              ),),
                          ],
                        ),
                        Row(
                          children: [
                            Text('Level '),
                            Text('\u00B7',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Color(0xFF242B36)
                                )),
                            SizedBox(width: 2,),
                            Text('2',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                              ),)
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 5,),
                    Text('I will do professional figma design for website tamplate....',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,),
                    Divider(
                      color: Color(0xFFF2F2F2),
                      thickness: 1,
                      height: 10,
                    )
                  ],
                ),),
            ),
            SizedBox(height: 5,),
            pricebanner(title: 'Starting from', price: '126', width: 220,)
          ],
        ),
      ),
    );
  }
}
