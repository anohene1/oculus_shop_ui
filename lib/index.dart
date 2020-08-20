import 'package:flutter/material.dart';
import 'package:virtual_reality_shop/models/items_model.dart';
import 'package:virtual_reality_shop/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:virtual_reality_shop/utils/responsive.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:virtual_reality_shop/widgets/item_card.dart';

class Index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UiColors.color1,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(
                      height: screenHeight(context, 0.03),
                      width: screenWidth(context, 0.03),
                      child: SvgPicture.asset('assets/images/menu.svg'),
                    ),
                    SizedBox(
                      width: screenWidth(context, 0.26),
                    ),
                    Text(
                      'Oculus',
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                            fontSize: 32, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      width: screenWidth(context, 0.18),
                    ),
                    Icon(Icons.search),
                    SizedBox(
                      width: screenWidth(context, 0.04),
                    ),
                    SizedBox(
                      height: screenHeight(context, 0.05),
                      width: screenWidth(context, 0.05),
                      child: SvgPicture.asset('assets/images/bagg.svg'),
                    ),
                  ],
                ),
                SizedBox(
                  height: screenHeight(context, 0.03),
                ),
                Text(
                  'Turn the world \n into your arcade',
                  style: GoogleFonts.montserrat(
                    textStyle:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: screenHeight(context, 0.02),
                ),
                Text(
                  'Our all-in-one VR gaming library puts you \n in the center of the action whether you’re \n at home or someplace new.',
                  style: GoogleFonts.montserrat(
                    textStyle:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
                  ),
                ),
                SizedBox(
                  height: screenHeight(context, 0.03),
                ),
                Container(
                  height: screenHeight(context, 0.4),
                  width: screenWidth(context, 1),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/banner2.jpg'),
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight(context, 0.04),
                ),
                ...itemsData.map((e) => buildItemsCard(context, e)).toList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

