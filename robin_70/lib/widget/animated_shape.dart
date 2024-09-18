import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';

class AnimatedShape extends StatefulWidget {
  final Color color;
  const AnimatedShape({super.key, required this.color});

  @override
  State<AnimatedShape> createState() => _AnimatedShapeState();
}

class _AnimatedShapeState extends State<AnimatedShape> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: _buildGlow(),
    );
  }

  Widget _buildGlow() {
    return SizedBox(
      width: 200,
      height: 200,
      child: AvatarGlow(
        glowRadiusFactor: 0.2,
        startDelay: const Duration(milliseconds: 1000),
        duration: const Duration(milliseconds: 3000),
        glowColor: widget.color,
        glowShape: BoxShape.circle,
        animate: true,
        curve: Curves.fastOutSlowIn,
        child: Material(
          elevation: 1.0,
          shape: const CircleBorder(),
          color: widget.color,
          child: CircleAvatar(
            radius: 1.0,
            child: Container(),
          ),
        ),
      ),
    );
  }
}
