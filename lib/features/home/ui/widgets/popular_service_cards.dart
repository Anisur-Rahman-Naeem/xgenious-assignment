import 'package:flutter/material.dart';
import 'package:xgenious_assignment/features/home/ui/widgets/services.dart';

class PopularServiceCards extends StatelessWidget {
  const PopularServiceCards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260, // set your card height
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            10,
                (index) => Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Services(),
            ),
          ),
        ),
      ),
    );
  }
}