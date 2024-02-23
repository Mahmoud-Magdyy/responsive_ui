import 'package:flutter/material.dart';
import 'package:responsive_ui/widgets/custom_dot.dart';

class DotsIndecator extends StatelessWidget {
  const DotsIndecator({super.key, required this.currentPaheIndex});
  final int currentPaheIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => Padding(
          padding: const EdgeInsets.only(right: 6),
          child: CustomDotIndecator(isActive: index == currentPaheIndex),
        ),
      ),
    );
  }
}
