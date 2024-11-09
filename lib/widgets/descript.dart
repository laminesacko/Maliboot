import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:maliboot_challenge/widgets/similar.dart';
import 'package:readmore/readmore.dart';

import '../models/models.dart';

class PlateDescript extends StatelessWidget {
  final Plate plate;
  PlateDescript(this.plate, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 19,
        ),
        Container(
          width: double.maxFinite,
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: ReadMoreText(
            plate.detail,
            trimLines: 6,
            colorClickableText: Color(0xFF5F67EA),
            trimMode: TrimMode.Line,
            trimCollapsedText: 'Plus',
            trimExpandedText: ' Réduire',
            style: TextStyle(
              height: 1.5,
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: FadeInUp(
              duration: const Duration(milliseconds: 400),
              child: const Text(
            "Produit Similaire",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          )),
        ),
        FadeInUp(
            duration: const Duration(milliseconds: 500),
            child: Similar(Plate.plates2())),
        const SizedBox(
          height: 10,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: FadeInUp(
              duration: const Duration(milliseconds: 400),
              child: const Text(
            "Autres Produit",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          )),
        ),
        FadeInUp(
            duration: const Duration(milliseconds: 500),
            child: Similar(Plate.plates()))
      ],
    );
  }
}
