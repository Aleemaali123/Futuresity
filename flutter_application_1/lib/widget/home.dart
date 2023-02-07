import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CourseApp extends StatefulWidget {
  static int length = 0;
  final String Image;
  final String Class;
  final String Subject;

  CourseApp({
    required this.Image,
    required this.Class,
    required this.Subject,
  });

  @override
  State<CourseApp> createState() => _CourseAppState();
}

class _CourseAppState extends State<CourseApp> {
  @override
  Widget build(BuildContext context) {
    var gridMap;
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12.0,
        mainAxisSpacing: 12.0,
      ),
      itemCount: gridMap.lenght,
      itemBuilder: ((context, index) {
        return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                12.0,
              ),
              color: Colors.white,
            ),
            child: Column(children: [
              Image.network('https:futursity.com/course/api/categories')
            ]));
      }),
    );
  }
}
