
import 'package:flutter/material.dart';
import 'package:xgenious_assignment/app/assets_path.dart';
import 'package:xgenious_assignment/features/home/ui/widgets/welcome_message_and_name.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        welcomeMessageandName(),
        CircleAvatar(
          radius: 18,
          backgroundImage: AssetImage(
            AssetsPath.profileAvatarImage,
          ),
        ),
      ],
    );
  }
}

