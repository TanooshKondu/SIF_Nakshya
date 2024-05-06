import 'package:admin/screens/side_bar_screens/Actual_2D_Map.dart';
import 'package:flutter/material.dart';
import 'package:admin/models/MyFiles.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../constants.dart';
import 'package:admin/3D_Map.dart'; // Import the widget you want to navigate to
import 'package:admin/2D.dart';

class FileInfoCard extends StatelessWidget {
  const FileInfoCard({
    Key? key,
    required this.info,
  }) : super(key: key);

  final CloudStorageInfo info;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to a new screen when the card is tapped
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => info.title == "2d map"
                  ? BhuvanMap()
                  : IFrameTesterApp()), // Replace with your actual widget
        );
      },
      child: Container(
        padding: EdgeInsets.all(defaultPadding),
        decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          image: DecorationImage(
            image: AssetImage(info.svgSrc),
            fit: BoxFit.cover,
          ),
        ),
        child: info.title == "3d map"
            ? Container(
                height: 10,
                width: 10,
                child: info.classmate,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
              )
            : null,
      ),
    );
  }
}
