import 'package:admin/constants.dart';
import 'package:flutter/material.dart';
import 'package:admin/3D.dart';
import 'package:admin/2D.dart';
import 'package:admin/3D_Map.dart';

class CloudStorageInfo {
  final String svgSrc;
  final String? title, totalStorage;
  final int? numOfFiles, percentage;
  final Color? color;
  final Widget? classmate;
  final Widget? nextclass;
  CloudStorageInfo({
    required this.svgSrc,
    this.title,
    this.totalStorage,
    this.numOfFiles,
    this.percentage,
    this.color,
    this.classmate,
    this.nextclass,
  });
}

List demoMyFiles = [
  CloudStorageInfo(
      title: "2d map",
      numOfFiles: 1328,
      svgSrc: "lib/object/2d_india.jpg",
      totalStorage: "1.9GB",
      color: primaryColor,
      percentage: 35,
      nextclass: BhuvanMapDemo(),
      classmate: BhuvanMapDemo()),
  CloudStorageInfo(
      title: "3d map",
      numOfFiles: 1328,
      svgSrc: "lib/object/2d_india.jpg",
      totalStorage: "2.9GB",
      color: Color(0xFFFFA113),
      percentage: 35,
      nextclass: IFrameTesterApp(),
      classmate: MyHomePage()),
];
