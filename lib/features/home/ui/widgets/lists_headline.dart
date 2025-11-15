
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListsHeadline extends StatefulWidget {
  const ListsHeadline({
    super.key, required this.title, required this.buttonText,
  });
  final String title;
  final String buttonText;

  @override
  State<ListsHeadline> createState() => _ListsHeadlineState();
}

class _ListsHeadlineState extends State<ListsHeadline> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(widget.title,
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 20
            ),),
        ),
        TextButton(
            onPressed: (){},
            child: Text(widget.buttonText,
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color(0xFF242B36)
              ),))
      ],
    );
  }
}