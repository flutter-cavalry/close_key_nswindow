import 'package:flutter/material.dart';
import 'package:close_key_nswindow/close_key_nswindow.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _closeKeyNswindowPlugin = CloseKeyNswindow();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: OutlinedButton(
              onPressed: () => _closeKeyNswindowPlugin.closeKeyWindow(),
              child: const Text('Close key window')),
        ),
      ),
    );
  }
}
