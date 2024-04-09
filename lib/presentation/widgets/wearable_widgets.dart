import 'package:flutter/material.dart';

class WearablesWidgets extends StatelessWidget {
  WearablesWidgets({
    super.key,
    required this.data,
  });

  final WearablesWidgetsData data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 64,
        width: 300,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset(data.image),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              data.wearableText,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            ),
            const Spacer(),
            Container(
              height: 26,
              width: 92,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Center(
                child: Text(
                  'Connect',
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class WearablesWidgetsData {
  const WearablesWidgetsData({
    required this.wearableText,
    required this.image,
  });

  final String wearableText;
  final String image;
}
