import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key,
    required this.image,
    this.imageBackground,
    this.imageColor,
  });

  final String image;
  final Color? imageBackground, imageColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 60
            ),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                height: 60,
                width: 60,
                decoration: ShapeDecoration(
                    color: imageBackground ?? const Color(0xFFFAFAFA),
                    shape: const OvalBorder()),
                child: Center(
                  child: SvgPicture.asset(
                    image,
                    colorFilter: ColorFilter.mode(
                        imageColor ?? const Color(0xff4BE7FE), BlendMode.srcIn),
                  ),
                ),
              ),
            ),
          ),
        ),
          Icon(
          Icons.arrow_forward_ios,
          color:
              imageBackground == null ? const Color(0xFF064061) : Colors.white,
        )
      ],
    );
  }
}
