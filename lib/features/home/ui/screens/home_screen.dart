import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xgenious_assignment/app/assets_path.dart';
import 'package:xgenious_assignment/features/home/ui/widgets/category_item.dart';
import 'package:xgenious_assignment/features/home/ui/widgets/custom_appbar.dart';
import 'package:xgenious_assignment/features/home/ui/widgets/home_carousal_slider.dart';
import 'package:xgenious_assignment/features/home/ui/widgets/lists_headline.dart';
import 'package:xgenious_assignment/features/home/ui/widgets/load_more_button.dart';
import 'package:xgenious_assignment/features/home/ui/widgets/popular_service_cards.dart';
import 'package:xgenious_assignment/features/home/ui/widgets/price_banner.dart';
import 'package:xgenious_assignment/features/home/ui/widgets/recent_job_lists.dart';
import 'package:xgenious_assignment/features/home/ui/widgets/searchTextField.dart';
import 'package:xgenious_assignment/features/home/ui/widgets/services.dart';

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
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60), // your desired height
        child: Container(
          color: Color(0xFFF2F2F2),
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          // flush left
          alignment: Alignment.centerLeft,
          child: SafeArea(child: CustomAppBar()),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
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
                    return Row(children: [CategoryItem(), SizedBox(width: 15)]);
                  },
                ),
              ),
              SizedBox(height: 8),
              HomeCarousalSlider(),
              SizedBox(height: 8),
              ListsHeadline(
                title: 'Popular Services',
                buttonText: 'Explore all',
              ),
              SizedBox(height: 3),
              PopularServiceCards(),
              SizedBox(height: 12),
              Text(
                'Recent Job Posted',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
              ),
              RecentJobLists(),
              SizedBox(height: 8),
              LoadMoreButton(),
              SizedBox(height: 8),
              ListsHeadline(
                title: 'Top Rated Freelancers',
                buttonText: 'Explore all',
              ),
              SizedBox(height: 3),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    10,
                    (index) => Row(
                      children: [
                        SizedBox(
                            width: 300,
                            child: freelancerCard()
                        )],
                    ),
                  ),
                ),
              ),

              // ...
            ],
          ),
        ),
      ),
      backgroundColor: Color(0xFFF2F2F2),
    );
  }
}

class freelancerCard extends StatelessWidget {
  const freelancerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 18,
                      backgroundImage: AssetImage(
                        AssetsPath.profileAvatarImage,
                      ),
                    ),
                    SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Esther Howard',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(width: 5),
                            Icon(
                              Icons.check_circle,
                              color: Color(0xFF007456),
                              size: 16,
                            ),
                          ],
                        ),
                        Text(
                          'UI/UX Designer',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color(0xFF414E62),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                Container(
                  decoration: BoxDecoration(
                    color: Color(0x1AEF4D17),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 8,
                      bottom: 8,
                      left: 13,
                      right: 13,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.flash_on,
                          size: 10,
                          color: Color(0xffEF4D17),
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Pro',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            height: 0.1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFF2F2F2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 8,
                      bottom: 8,
                      left: 13,
                      right: 13,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Figma',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                            height: 0.1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 5),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFF2F2F2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 8,
                      bottom: 8,
                      left: 13,
                      right: 13,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Mobile App',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                            height: 0.1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 5),
                Text(
                  '+4',
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    height: 0.1,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.star_border, size: 15),
                      SizedBox(width: 5),
                      Text(
                        'Review',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      '4.5',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(width: 5),
                    Text(
                      '(212 reviews)',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 3),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.location_on_outlined, size: 15),
                      SizedBox(width: 5),
                      Text(
                        'Location',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),

                Text(
                  '6391 Elgin St. Celina',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            SizedBox(height: 3),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.attach_money, size: 15),
                      SizedBox(width: 5),
                      Text(
                        'Hourly Rate',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),

                Row(
                  children: [
                    Text(
                      '\$83.00',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      '/hr',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
