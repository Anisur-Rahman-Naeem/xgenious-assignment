
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class pricebanner extends StatefulWidget {
  const pricebanner({
    super.key, required this.title, required this.price, required this.width,
  });
  final String title;
  final String price;
  final double width;

  @override
  State<pricebanner> createState() => _pricebannerState();
}

class _pricebannerState extends State<pricebanner> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      decoration: BoxDecoration(
        color: Color(0xFFF2F2F2),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: (){},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(widget.title,style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 14
              ),),
              Text("\$${widget.price}",style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 16
              ),),
            ],
          ),
        ),
      ),
    );
  }
}