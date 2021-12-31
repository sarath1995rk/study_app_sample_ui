import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:study_app_sample/widgets/bottomSheet.dart';
import 'package:study_app_sample/widgets/carolSlider.dart';
import 'package:study_app_sample/widgets/filterButton.dart';
import 'package:study_app_sample/widgets/programsListing.dart';
import 'package:study_app_sample/widgets/topConatiner.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 300,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                TopContainer(),
                Positioned(top: 120, left: 0, right: 0, child: CaroSlider()),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          FilterButton(
              () => FilteringBottomSheet().modalBottomSheetMenu(context)),
          Expanded(
              child:
                  Container(color: Colors.grey[200], child: ProgramListing()))
        ],
      )),
    );
  }
}
