import 'package:flutter/material.dart';
import 'package:xgenious_assignment/features/home/ui/screens/home_screen.dart';
import 'package:xgenious_assignment/features/home/ui/widgets/job_post_card.dart';

class RecentJobLists extends StatelessWidget {
  const RecentJobLists({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        10,
            (index) => Row(
          children: [
            SizedBox(
                width: 340,
                child: JobPostCard()),
          ],
        ),
      ),
    );
  }
}