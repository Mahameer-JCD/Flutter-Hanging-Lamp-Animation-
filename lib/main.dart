import 'package:flutter/material.dart';
import 'package:flutter_implicit_animation_phase02/glow_light_effect.dart';
import 'package:flutter_implicit_animation_phase02/lamp_hanging_button.dart';
import 'custom_lamp.dart';
import 'off_lamp_custom_painter.dart';
import 'on_lamp_custom_painter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool showFirst = true;

  void _toggleLamp(bool isEnabled) {
    setState(() {
      showFirst = !isEnabled;
    });

    // print("Lamp is now: ${isOn ? "ON" : "OFF"}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A1A1A),
      body: Center(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Positioned(
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 1000),
                opacity: showFirst ? 0.0 : 1.0,
                child: const OnLampGlowEffect(),
              ),
            ),
            AnimatedCrossFade(
              firstChild: CustomPaint(
                painter: CustomOffLamp(),
                size: const Size(400, 400),
              ),
              secondChild: CustomPaint(
                painter: CustomOnLamp(),
                size: const Size(400, 400),
              ),
              crossFadeState:
                  showFirst
                      ? CrossFadeState.showFirst
                      : CrossFadeState.showSecond,
              duration: const Duration(milliseconds: 2000),
            ),
            CustomPaint(painter: CustomLamp(), size: const Size(400, 400)),
            Positioned(
              top: 330,
              right: 164,
              child: AnimatedSwitchShape(onToggle: _toggleLamp),
            ),
          ],
        ),
      ),
    );
  }
}
