import 'package:flutter/material.dart';
import 'package:practic/presentation/widgets/wearable_widgets.dart';

class WearableList extends StatelessWidget {
  const WearableList({
    super.key,
    required this.listWearablesWidgetsData,
  });

  final List<WearablesWidgetsData> listWearablesWidgetsData;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: listWearablesWidgetsData
            .map((e) => WearablesWidgets(data: e))
            .toList());
  }
}
