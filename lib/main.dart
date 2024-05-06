import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('AbsorbPointer Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  print('Button tapped');
                },
                child: const Text('Enabled Button'),
              ),
              const SizedBox(height: 20),
              AbsorbPointer(
                absorbing: true, // Set to true to absorb pointer events
                child: ElevatedButton(
                  onPressed: () {
                    print('Button inside AbsorbPointer tapped');
                  },
                  child: const Text('Disabled Button'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
