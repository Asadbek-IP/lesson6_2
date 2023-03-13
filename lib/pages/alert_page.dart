import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AlertPage extends StatefulWidget {
  const AlertPage({super.key});

  @override
  State<AlertPage> createState() => _AlertPageState();
}

void androidAlert(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: const Text("Chiqish"),
      content: const Text("Siz rostan ham chiqishni hohlayszimi?"),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Bekor qilish")),
        TextButton(
            onPressed: () {
              SystemNavigator.pop();
            },
            child: const Text("Ha")),
      ],
    ),
  );
}

void iosAlert(BuildContext context) {
  showCupertinoDialog(
    context: context,
    builder: (context) => CupertinoAlertDialog(
      title: const Text("Chiqish"),
      content: const Text("Siz rostan ham chiqishni hohlaysizmi?"),
      actions: [
        CupertinoDialogAction(
          child: const Text("Bekor Qilish"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        CupertinoDialogAction(
          onPressed: () {
            SystemNavigator.pop();
          },
          textStyle: const TextStyle(color: Colors.red),
          child: const Text(
            "Tasdiqlash",
          ),
        ),
      ],
    ),
  );
}

class _AlertPageState extends State<AlertPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            if (Platform.isIOS) {
              iosAlert(context);
            } else {
              androidAlert(context);
            }
          },
          child: const Text("chiqish"),
        ),
      ),
    );
  }
}
