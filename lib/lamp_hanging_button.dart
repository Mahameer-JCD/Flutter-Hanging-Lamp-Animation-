import 'package:flutter/material.dart';

class AnimatedSwitchShape extends StatefulWidget {
  final ValueChanged<bool>? onToggle;

  const AnimatedSwitchShape({super.key, this.onToggle});

  @override
  _AnimatedSwitchShapeState createState() => _AnimatedSwitchShapeState();
}

class _AnimatedSwitchShapeState extends State<AnimatedSwitchShape> {
  bool _isEnabled = false;

  void _toggleSwitch() {
    setState(() {
      _isEnabled = !_isEnabled;
    });

    widget.onToggle?.call(_isEnabled);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggleSwitch,
      child: AnimatedContainer(
        height: 50,
        width: 20,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.grey.shade600,
        ),
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeOut,
        child: AnimatedAlign(
          alignment: _isEnabled ? Alignment.bottomCenter : Alignment.topCenter,
          duration: const Duration(milliseconds: 600),
          curve: Curves.bounceOut,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Container(
              height: 15,
              width: 15,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey.shade800,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
