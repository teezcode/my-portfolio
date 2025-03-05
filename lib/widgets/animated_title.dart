import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedTitle extends StatefulWidget {
  const AnimatedTitle({super.key});

  @override
  State<AnimatedTitle> createState() => _AnimatedTitleState();
}

class _AnimatedTitleState extends State<AnimatedTitle> {
  List<String> skills = const [
    'Mobile Developer',
    'Public Speaker',
    'Content Creator',
  ];

  @override
  Widget build(BuildContext context) {
    return buildAnimatedText();
  }

  Widget buildAnimatedText() {
    return AnimatedTextKit(
      animatedTexts: [
        for (var i = 0; i < skills.length; i++) buildText(i),
      ],
      pause: const Duration(milliseconds: 60),
      displayFullTextOnTap: true,
      repeatForever: true,
    );
  }

  buildText(int index) {
    return TypewriterAnimatedText(skills[index],
        textStyle: const TextStyle(
            fontSize: 60, fontWeight: FontWeight.w700, color: Colors.white),speed: const Duration(milliseconds: 200));
  }
}
