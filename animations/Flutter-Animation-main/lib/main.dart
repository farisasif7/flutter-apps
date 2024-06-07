import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SimpleAssetAnimation(),
    );
  }
}

/// Basic example playing a Rive animation from a packaged asset.
class SimpleAssetAnimation extends StatelessWidget {
  const SimpleAssetAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation'),
      ),
      body: const SizedBox(
        height: 200,
        width: 200,
        child: Center(
          child: RiveAnimation.asset(
            'animations/car_move.riv',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
