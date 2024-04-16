import 'package:flutter/material.dart';
import 'package:food_delivery/common/color_extension.dart';

class CategoryCell extends StatelessWidget {
  final Map cObj;
  final VoidCallback onTap;
  const CategoryCell({super.key, required this.cObj, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: onTap,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(48),
              child: Image.asset(
                cObj["image"],
                width: 70,
                height: 70,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              cObj["name"],
              style: TextStyle(
                  color: TColor.primaryText,
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
