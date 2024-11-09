import 'package:flutter/material.dart';
import 'package:maliboot_challenge/widgets/descript.dart';
import 'package:maliboot_challenge/widgets/header.dart';

import '../models/models.dart';


class PlateInfo extends StatelessWidget {
  final Plate plate;
  PlateInfo(this.plate, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Column(
          children: [PlateHeader(plate), PlateDescript(plate)],
        ));
  }
}
