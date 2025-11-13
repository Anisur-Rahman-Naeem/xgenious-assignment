import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xgenious_assignment/app/assets_path.dart';
import 'package:xgenious_assignment/features/home/ui/widgets/category_item.dart';
import 'package:xgenious_assignment/features/home/ui/widgets/custom_appbar.dart';
import 'package:xgenious_assignment/features/home/ui/widgets/home_carousal_slider.dart';
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
        forceMaterialTransparency: true,
        backgroundColor: Color(0xFFF2F2F2),
        title: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: CustomAppBar(),
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
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
              SizedBox(height: 8),
              HomeCarousalSlider(),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Text('Popular Services',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 20
                    ),),
                  ),
                TextButton(
                  onPressed: (){},
                  child: Text('Explore all',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Color(0xFF242B36)
                  ),))
                ],
              ),
              SizedBox(height: 3),
              Card(
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
                                fontSize: 16
                              ),),
                              Divider(
                                color: Color(0xFFF2F2F2),
                                thickness: 1,
                                height: 10,
                              )
                            ],
                          ),),
                      ),
                    SizedBox(height: 5,),
                    
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      backgroundColor: Color(0xFFF2F2F2),
    );
  }
}
