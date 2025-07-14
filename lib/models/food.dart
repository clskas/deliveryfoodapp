//Food item
class Food {
  final String name;           // eg cheese burger
  final String description;    // eg a burger full of cheese
  final String imagePath;      // eg lib/images/cheese_burger.png
  final double price;          // eg 4.9 usd
  final FoodCategory category; // eg burger
  List<Addon> availableAddons; // eg [extra cheese, sauce, extra patty]

  Food({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.price,
    required this.category,
    required this.availableAddons,
  });
}

//food categories
enum FoodCategory { burgers, salads, sides, desserts, drinks }

//food addons
class Addon {
  String name;
  double price;

  Addon({required this.name, required this.price});
}
