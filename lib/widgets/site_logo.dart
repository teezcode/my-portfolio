import 'package:flutter/material.dart';

class SiteLogo extends StatelessWidget {
  final VoidCallback? onTap;
  const SiteLogo({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 126,
        height: 41,
        decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/Hez.png'),
            )
        ),
      ),
    );
  }
}
