import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:practic/presentation/widgets/wearable_list.dart';
import 'package:practic/presentation/widgets/wearable_widgets.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<WearablesWidgetsData> listWearablesWidgetsData = [
    const WearablesWidgetsData(
      wearableText: 'Apple',
      image: 'assets/png/apple.png',
    ),
    const WearablesWidgetsData(
      wearableText: 'Concept2',
      image: 'assets/png/concept.png',
    ),
    const WearablesWidgetsData(
      wearableText: 'Eight',
      image: 'assets/png/eight.png',
    ),
    const WearablesWidgetsData(
      wearableText: 'FitBit',
      image: 'assets/png/fit.png',
    ),
    const WearablesWidgetsData(
      wearableText: 'Garmin',
      image: 'assets/png/garmin.png',
    ),
    const WearablesWidgetsData(
      wearableText: 'Google Fit',
      image: 'assets/png/google.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF9F9F9),
      appBar: AppBar(
        backgroundColor: const Color(0xffF9F9F9),
        elevation: 0,
        leading: const Icon(
          Icons.keyboard_arrow_left_outlined,
          color: Colors.black,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(18.0),
            child: Text(
              'Skip',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
            ),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/svg/logo_m.svg'),
            const SizedBox(
              height: 5,
            ),
            const Text(
              'Connect your wearables',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 5,
            ),
            WearableList(listWearablesWidgetsData: listWearablesWidgetsData),
          ],
        ),
      ),
    );
  }
}
