import 'package:flutter/material.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({super.key});

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.blueAccent,
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.grey,
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                color: const Color.fromARGB(255, 89, 88, 88),
                child: Column(
                  children: const [
                    ListTile(leading: Icon(Icons.group_outlined),title: Text("New Group"),),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(),
    );
  }
}
