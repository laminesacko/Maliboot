import 'package:flutter/material.dart';

import '../models/models.dart';


class PlateHeader extends StatelessWidget {
  final Plate plate;
  const PlateHeader(this.plate, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            plate.name,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 5,
              horizontal: 15,
            ),
            decoration: BoxDecoration(
              color: const Color(0xFF5F67EA),
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Text(
              '5000 FCFA',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
