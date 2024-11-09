
class Categorie{
  Categorie({required this.image, required this.name});
  String image;
  String name;
}

class Produit{
  Produit({required this.image, required this.name, required this.prix});
  String image;
  String name;
  String prix;
}

class Plate {
  String name;
  String bigImage;
  String detail;
  Plate(this.name, this.bigImage, this.detail);
  static List<Plate> plates() {
    return [
      Plate("Pizza", "Assets/pizza.jpeg",
          "Découvrez notre Pizza Gourmet Napoli, une invitation aux saveurs authentiques de l’Italie. Faite à partir d’une pâte artisanale pétrie chaque matin, puis lentement levée pour obtenir une texture légère et moelleuse, notre pizza se pare d’ingrédients frais et d’une qualité irréprochable. La base de notre sauce tomate maison, réalisée à partir de tomates juteuses mûries sous le soleil, se marie parfaitement avec une mozzarella di bufala fondante."),
      Plate("Burger", "Assets/burger.jpeg", "bin burger"),
      Plate("Poulet", "Assets/poulet.jpg", "Découvrez notre Pizza Gourmet Napoli, une invitation aux saveurs authentiques de l’Italie. Faite à partir d’une pâte artisanale pétrie chaque matin, puis lentement levée pour obtenir une texture légère et moelleuse, notre pizza se pare d’ingrédients frais et d’une qualité irréprochable. La base de notre sauce tomate maison, réalisée à partir de tomates juteuses mûries sous le soleil, se marie parfaitement avec une mozzarella di bufala fondante."),
    ];
  }

  static List<Plate> plates2() {
    return [
      Plate("Hawaieine", "Assets/hawaiieine.jpg",
          "Découvrez notre Pizza Gourmet Napoli, une invitation aux saveurs authentiques de l’Italie. Faite à partir d’une pâte artisanale pétrie chaque matin, puis lentement levée pour obtenir une texture légère et moelleuse, notre pizza se pare d’ingrédients frais et d’une qualité irréprochable. La base de notre sauce tomate maison, réalisée à partir de tomates juteuses mûries sous le soleil, se marie parfaitement avec une mozzarella di bufala fondante."),
      Plate("Margaritha", "Assets/margaritha.jpg", "Découvrez notre Pizza Gourmet Napoli, une invitation aux saveurs authentiques de l’Italie. Faite à partir d’une pâte artisanale pétrie chaque matin, puis lentement levée pour obtenir une texture légère et moelleuse, notre pizza se pare d’ingrédients frais et d’une qualité irréprochable. La base de notre sauce tomate maison, réalisée à partir de tomates juteuses mûries sous le soleil, se marie parfaitement avec une mozzarella di bufala fondante."),
      Plate("Napoli", "Assets/napoli.jpg", "bin burger"),
      Plate("Scicillienne", "Assets/Scicillienne.jpg", "bin burger"),
    ];
  }
}
