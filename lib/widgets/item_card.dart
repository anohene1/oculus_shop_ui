import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:virtual_reality_shop/models/items_model.dart';
import 'package:virtual_reality_shop/utils/colors.dart';
import 'package:virtual_reality_shop/utils/responsive.dart';

Widget buildItemsCard(BuildContext context, Items items) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 5.0),
    child: Container(
      height: screenHeight(context, 0.15),
      width: screenWidth(context, 1),
      decoration: BoxDecoration(
        color: UiColors.color4,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          SizedBox(
            height: screenHeight(context, 0.15),
            width: screenWidth(context, 0.3),
            child: Image.asset(items.imgurl),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  items.name,
                  style: GoogleFonts.montserrat(
                    textStyle:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                ),
                Text(
                  items.desc,
                  style: GoogleFonts.montserrat(
                    textStyle:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                  ),
                ),
                Text(
                  '\$${items.price}',
                  style: GoogleFonts.montserrat(
                    textStyle:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
