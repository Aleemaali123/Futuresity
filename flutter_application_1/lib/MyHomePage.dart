import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/widget/home.dart';

import 'models/courses.api..dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late List<Course> recipes;
  bool _isLoading = true;
  var length = 0;
  @override
  void initState() {
    super.initState();

    getRecipes();
  }

  Future<void> getRecipes() async {
    recipes = await Course.getCourse();
    setState(() {
      _isLoading = false;
    });
    print(recipes);
  }

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.book),
        backgroundColor: Colors.white,
      ),
      // body: _isLoading
      // ? const ListTile(
      //   leading: Text("Top Course",
      //   style: TextStyle(color: Colors.black,fontSize: 25),
      //   ),
      //   trailing: Text("All Courses >",
      //    style: TextStyle(color: Colors.black,fontSize: 25),
      //   ),
      // ),
      body:_isLoading
     ?  Container(
        height: 250,
        child:ListView.builder(
          itemCount: CourseApp.length,
          itemBuilder:(context, index) {
            return CourseApp(
              Image: Course[index].Images,
               Class: Course[index].Class, 
               Subject: Course[index].Subject, 
               );
          },
          )
          
     ):
     
    );
    
  }

  Widget buildCard() => Container(
        width: 150,
        height: 150,
        color: Colors.white,
        child: Image.network('https:futursity.com/course/api/top_courses'),
      );
}
