import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Bottom Sheet App",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: const Text(
            "Bottom Sheet App",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w900,
              color: Colors.white,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        body: const Center(
          child: Text(
            "Bottom Sheet Demo",
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 30,
              fontWeight: FontWeight.w600,
              color: Colors.amber,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: BottomPressedCode,
          child: const Icon(
            Icons.add,
            color: Colors.pinkAccent,
          ),
        ),
      ),
    );
  }

  void BottomPressedCode() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return  Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "Bottom Sheet View",
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w600,
              ),
            ),
            Container(
              height: 300,
              color: Colors.deepOrange,
            ),
          ],
        );
      },
    );
  }
}
