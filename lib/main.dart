import 'package:flutter_3_3_crash/list_screen.dart';
import 'package:flutter_3_3_crash/second_screen.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({
    super.key,
  });

  @override
  State<MyApp> createState() => _DaysieAppState();
}

class _DaysieAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SecondScreen();

    return MaterialApp(
      title: 'App',
      debugShowCheckedModeBanner: false,
      home: _HomeWidget(),
    );
  }
}

class _HomeWidget extends StatelessWidget {
  const _HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Scaffold(
        body: Center(
          child: ElevatedButton(
              child: Text(
                "Start",
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return ListScreen();
                    },
                  ),
                );
              }),
        ),
      );
    });
  }
}
