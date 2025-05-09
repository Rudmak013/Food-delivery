import 'package:flutter/material.dart';
import 'package:food_delivery/common/color_extension.dart';

class CategoryCell extends StatelessWidget {
  final Map pObj;
  final VoidCallback onPressed;
  const CategoryCell({super.key, required this.pObj, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 250,
        height: 50,
        margin: EdgeInsets.symmetric(horizontal: 8),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: (pObj["color"] as Color? ?? TColor.primary).withOpacity(0.3),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  pObj["icon"], 
                  width: 70, 
                  height: 70, 
                  fit: BoxFit.contain,),

                  const SizedBox(
                    height: 15,
                  ),

                  Expanded(
                    child: Text(
                      pObj["Name"], style: TextStyle(
                            color: TColor.primaryText,
                            fontSize: 16, 
                            fontWeight: FontWeight.w700),
                            ),
                  ),
              ],
            ),

        
          ],
        ),
      ),
    );
  }
}