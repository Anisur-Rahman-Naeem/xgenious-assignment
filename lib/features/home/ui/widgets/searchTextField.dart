import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchTextField extends StatefulWidget {
  const SearchTextField({
    super.key,
    required this.searchTEController,
  });

  final TextEditingController searchTEController;

  @override
  State<SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  final OutlineInputBorder borderStyle = OutlineInputBorder(
    borderRadius: BorderRadius.circular(12.0),
    borderSide: BorderSide.none, // <-- This removes the line!
  );
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.searchTEController,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        prefixIcon: Icon(Icons.search),
        hintText: "Search here",
        hintStyle: GoogleFonts.poppins(
          fontWeight: FontWeight.w400,
          fontSize: 16,
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 6, top: 2, bottom: 2),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFFF2F2F2),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Icon(Icons.tune),
          ),
        ),
        border: borderStyle,
        enabledBorder: borderStyle,
        focusedBorder: borderStyle,
      ),
    );
  }
}