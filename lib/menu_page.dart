import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tech Blog App',),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [ 
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, 'newspage');
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: const Image(image: AssetImage('assets/tech.png'),
              width: 380,),
            ),
          ),
      
          GestureDetector(
             onTap: (){
              Navigator.pushNamed(context, 'scholarships');
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: const Image(image: AssetImage('assets/scholarship.jpg'),
              width: 380,),
            ),
          ),
        ],),
      )
    );
  }
}