import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xgenious_assignment/app/assets_path.dart';
import 'package:xgenious_assignment/features/home/ui/widgets/category_item.dart';
import 'package:xgenious_assignment/features/home/ui/widgets/custom_appbar.dart';
import 'package:xgenious_assignment/features/home/ui/widgets/searchTextField.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController searchTEController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF2F2F2),
        title: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: CustomAppBar(),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(19.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchTextField(searchTEController: searchTEController),
            SizedBox(height: 15),
            Text(
              'Popular Categories',
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      CategoryItem(),
                      SizedBox(width: 15,),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xFFF2F2F2),
    );
  }
}
