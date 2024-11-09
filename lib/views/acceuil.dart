import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../models/models.dart';
import 'ProduitDetail.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  List<String> favorite = [
    "Assets/Favorie1.jpeg",
    "Assets/Favorie2.jpeg",
    "Assets/Favorie3.jpeg",
  ];
  List<Categorie> categorie = [
    Categorie(image: "Assets/FastFood.jpeg", name: "Fast Food"),
    Categorie(image: "Assets/PetitDejeuner.jpeg", name: "Petit Dej"),
    Categorie(image: "Assets/Patisserie.jpeg", name: "Patisserie"),
    Categorie(image: "Assets/Salade.jpeg", name: "Salade"),
    Categorie(image: "Assets/Tièbe.jpeg", name: "Repas Complet")
  ];
  List<Produit> produit = [
    Produit(image: "Assets/Pancakes.jpeg", name: "Fast Food", prix: "3 000"),
    Produit(
        image: "Assets/Tarte aux pommes.jpeg",
        name: "Tarte aux pommes",
        prix: "12 500"),
    Produit(
        image: "Assets/Salade Grecque.jpeg",
        name: "Salade Grecque",
        prix: "1 500"),
    Produit(
        image: "Assets/Poisson grillé.jpeg",
        name: "Poisson grillé",
        prix: "2 500"),
    Produit(
        image: "Assets/Attieké poisson.jpeg",
        name: "Attieké poisson",
        prix: "3 000"),
    Produit(
        image: "Assets/Poulet rôti.jpeg", name: "Poulet rôti", prix: "7 000"),
    Produit(image: "Assets/Tièb.jpeg", name: "Tièb", prix: "7 000"),
    Produit(image: "Assets/Foutou.jpeg", name: "Foutou", prix: "3 000"),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: double.infinity,
      width: double.infinity,
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu),
            ),
            title: Text(
              "Delicieuse",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
            pinned: true,
            expandedHeight: 250.0,
            //backgroundColor: Colors.deepPurple,
            flexibleSpace: FlexibleSpaceBar(
              background: buildCarouselSlider(),
            ),
          ),
          SliverList.list(children: [
            _ListCategorie(context),
            _ListFavorie(context),
            FadeInUp(
                duration: const Duration(milliseconds: 1400),
                child: _ListProdruit(context)),
          ])
        ],
      ),
    );
  }

  Padding buildCarouselSlider() {
    List<String> image = [
      "Assets/slide0.jpeg",
      "Assets/slide1.jpeg",
      "Assets/slide2.jpeg",
    ];
    return Padding(
      padding: const EdgeInsets.only(top: 60.0),
      child: CarouselSlider(
        options: CarouselOptions(
          height: 400,
          aspectRatio: 16 / 9,
          viewportFraction: 0.8,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          enlargeFactor: 0.3,
          scrollDirection: Axis.horizontal,
        ),
        items: image.map((i) {
          return Builder(
            builder: (BuildContext context) {
              return ClipRRect(
                child: Image.asset(i),
              );
            },
          );
        }).toList(),
      ),
    );
  }

  Padding _ListCategorie(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        child: Column(
          children: [
            FadeInUp(
              duration: const Duration(milliseconds: 1400),
              child: Material(
                child: Row(
                  children: [
                    Expanded(
                        child: Text(
                      "Categories",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    )),
                    Expanded(
                        child: TextButton(
                      onPressed: () {},
                      child: Text("ViewAll"),
                    ))
                  ],
                ),
              ),
            ),
            //SizedBox(height: 10,),
            FadeInLeft(
              duration: const Duration(milliseconds: 1400),
              child: SizedBox(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    for (int index = 0; index < categorie.length; index++)
                      Material(child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) => ProduiDetail(Plate(
                                  categorie[index].name,
                                  categorie[index].image,
                                  "Découvrez notre Pizza Gourmet Napoli, une invitation aux saveurs authentiques de l’Italie. Faite à partir d’une pâte artisanale pétrie chaque matin, puis lentement levée pour obtenir une texture légère et moelleuse, notre pizza se pare d’ingrédients frais et d’une qualité irréprochable. La base de notre sauce tomate maison, réalisée à partir de tomates juteuses mûries sous le soleil, se marie parfaitement avec une mozzarella di bufala fondante."))));
                        },
                        child: Padding(
                          padding: EdgeInsets.only(right: 8),
                          child: Material(
                            color: Colors.transparent,
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                                categorie[index].image)),
                                        borderRadius: BorderRadius.circular(8)),
                                    height: 40,
                                    width: 100,
                                  ),
                                ),
                                Text(categorie[index].name)
                              ],
                            ),
                          ),
                        ),
                      ),
    )],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Padding _ListFavorie(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Material(
              child: Text(
                "Favorie",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            //SizedBox(height: 10,),
            SizedBox(
              height: 140,
              child: ListView(
                scrollDirection: Axis.horizontal,
                itemExtent: 300,
                children: [
                  for (int index = 0; index < favorite.length; index++)
                    Material(
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) => ProduiDetail(Plate(
                                  "Favorie",
                                  favorite[index],
                                  "Découvrez notre Pizza Gourmet Napoli, une invitation aux saveurs authentiques de l’Italie. Faite à partir d’une pâte artisanale pétrie chaque matin, puis lentement levée pour obtenir une texture légère et moelleuse, notre pizza se pare d’ingrédients frais et d’une qualité irréprochable. La base de notre sauce tomate maison, réalisée à partir de tomates juteuses mûries sous le soleil, se marie parfaitement avec une mozzarella di bufala fondante."))));
                        },
                        child: Padding(
                          padding: EdgeInsets.only(right: 8),
                          child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(favorite[index])),
                                borderRadius: BorderRadius.circular(8)),
                            height: double.infinity,
                            width: 100,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Padding _ListProdruit(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        children: [
          for (int index = 0; index < produit.length; index++)
            Material(
                child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => ProduiDetail(Plate(
                              produit[index].name,
                              produit[index].image,
                              "Découvrez notre Pizza Gourmet Napoli, une invitation aux saveurs authentiques de l’Italie. Faite à partir d’une pâte artisanale pétrie chaque matin, puis lentement levée pour obtenir une texture légère et moelleuse, notre pizza se pare d’ingrédients frais et d’une qualité irréprochable. La base de notre sauce tomate maison, réalisée à partir de tomates juteuses mûries sous le soleil, se marie parfaitement avec une mozzarella di bufala fondante."))));
                    },
                    child: ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(produit[index].image)),
                            borderRadius: BorderRadius.circular(8)),
                        height: 80,
                        width: 80,
                      ),
                      title: Text(
                        produit[index].name,
                      ),
                      subtitle: Text(
                        "${produit[index].prix} CFA",
                      ),
                      trailing: IconButton(
                        color: Colors.red,
                        onPressed: () {},
                        icon: Icon(Icons.favorite),
                      ),
                    )))
        ],
      ),
    );
  }
}
