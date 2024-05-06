import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'storage_info_card.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Application Sectors",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/agriculture.svg",
            title: "Agricultural",
            amountOfFiles: "",
            numOfFiles: 140,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/business.svg",
            title: "E-Governanace",
            amountOfFiles: "",
            numOfFiles: 1328,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/tourist.svg",
            title: "Tourism",
            amountOfFiles: "",
            numOfFiles: 1328,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/urban.svg",
            title: "Urban",
            amountOfFiles: "",
            numOfFiles: 1328,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/rural.svg",
            title: "Rural",
            amountOfFiles: "",
            numOfFiles: 140,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/water.svg",
            title: "Water",
            amountOfFiles: "",
            numOfFiles: 140,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/forest.svg",
            title: "Forest",
            amountOfFiles: "",
            numOfFiles: 140,
          ),
        ],
      ),
    );
  }
}
