import 'package:flutter/material.dart';

class ScrollPage extends StatefulWidget {
  const ScrollPage({super.key});

  @override
  State<ScrollPage> createState() => _ScrollPageState();
}

class _ScrollPageState extends State<ScrollPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        // child: Column(
        //   children: [
        //     Container(
        //       width: double.infinity,
        //       height: 300,
        //       color: Colors.red,
        //     ),
        //     Container(
        //       width: double.infinity,
        //       height: 300,
        //       color: Colors.blue,
        //     ),
        //      Container(
        //       width: double.infinity,
        //       height: 300,
        //       color: Colors.green,
        //     ),
        //     Container(
        //       width: double.infinity,
        //       height: 300,
        //       color: Colors.red,
        //     ),
        //     Container(
        //       width: double.infinity,
        //       height: 300,
        //       color: Colors.blue,
        //     ),
        //      Container(
        //       width: double.infinity,
        //       height: 300,
        //       color: Colors.green,
        //     ),
        //   ],
        // ),
        
        child: Row(
          children: [
            Container(
              width: 100,
              height: 300,
              color: Colors.red,
            ),
            Container(
              width:100,
              height: 300,
              color: Colors.blue,
            ),
             Container(
              width: 100,
              height: 300,
              color: Colors.green,
            ),
            Container(
              width:100,
              height: 300,
              color: Colors.red,
            ),
            Container(
              width: 100,
              height: 300,
              color: Colors.blue,
            ),
             Container(
              width: 100,
              height: 300,
              color: Colors.green,
            ),

            const CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(""),
            )
          ],
        ),
      
      ),
    );
  }
}