import 'package:flutter/material.dart';

import '../models/models.dart';



class Similar extends StatelessWidget {
  Similar(this.plates ,{super.key});

  final List<Plate> plates;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      padding: const EdgeInsets.only(left: 25),
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) => GestureDetector(
                onTap: (){},
                child: Stack(
                  children: [
                    Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: Container(
                        height: 150,
                        width: 200,
                        padding: const EdgeInsets.all(5),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Hero(
                              tag: plates[index].name,
                              child: Image.asset(plates[index].bigImage, fit: BoxFit.cover,)),
                        ),
                      ),
                    ),
                    Positioned(
                        left: 25,
                        top: 90,
                        child: Text(
                          plates[index].name,
                          style: const TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
                        )),
                  ],
                ),
              )),
          separatorBuilder: ((context, index) => const SizedBox(
                width: 10,
              )),
          itemCount: plates.length),
    );
  }
}
