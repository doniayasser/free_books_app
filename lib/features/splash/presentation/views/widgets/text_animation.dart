import 'package:flutter/cupertino.dart';

class TextAnimation extends StatelessWidget {
  const TextAnimation({
    super.key,
    required this.textAnimation,
  });

  final Animation<Offset> textAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: textAnimation,
      builder: (context, child) {
        return SlideTransition(
          position: textAnimation,
          child: const Text(
            "Download free books.",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        );
      },
    );
  }
}
