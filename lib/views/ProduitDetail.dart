import 'package:flutter/material.dart';


import '../models/models.dart';
import '../widgets/detail.dart';
import '../widgets/info.dart';

class ProduiDetail extends StatelessWidget {
  ProduiDetail(this.plate, {super.key});

  final Plate plate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
              delegate: DetailPlate(
                  plate: plate,
                  expandedHeight: 250,
                  roundedContainerHeight: 30)),
          SliverToBoxAdapter(
            child: PlateInfo(plate),
          )
        ],
      ),
    );
  }
}
