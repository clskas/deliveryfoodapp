import 'package:deliveryfood/models/food.dart';

class Restaurant {
  //list of food menu
  final List<Food> _menu = [
    //burgers
    Food(
      name: "Classic Cheeseburger",
      description:
          "A juicy beet patty with melted, lettuce, tomato, and a hint of onion and picke",
      imagePath: "assets/images/burgers/cheeseburger.png",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 0299),
      ],
    ),
    Food(
      name: "BBQ Bacon Burger",
      description:
          "Smoky BBQ sauce, crispy, bacon, and onion rings make this beef burger a savory delight",
      imagePath: "assets/images/burgers/bbq_burger.png",
      price: 10.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Grilled onions", price: 0.99),
        Addon(name: "Jalopenos", price: 1.99),
        Addon(name: "Extra BBQ Sauce", price: 1.99),
      ],
    ),
    Food(
      name: "Veggie Burger",
      description:
          "A hearty veggie patty topped with fresh avocado, lettuce, and tomato, served on a whole",
      //imagePath: "assets/images/burgers/vege_burger.png",
      imagePath: "assets/images/burgers/vege_burger.png",
      price: 9.49,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Vegan Cheese", price: 0.99),
        Addon(name: "Grilled Mushrooms", price: 1.49),
        Addon(name: "Hummus Spread", price: 1.99),
      ],
    ),
    Food(
      name: "Aloha Burger",
      description:
          "A char-grilled chicken breast topped with a slice of grilled pineapple, Swiss cheese,",
      //imagePath: "assets/images/burgers/burger.png",
      imagePath: "assets/images/burgers/aloha_burger.png",
      price: 9.49,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Teriyaki Glaze", price: 0.99),
        Addon(name: "Extra Pineapple", price: 0.99),
        Addon(name: "Bacon", price: 1.49),
      ],
    ),
    Food(
      name: "Blue Moon Burger",
      description:
          "This burger is a blue cheese lover's dream. It features a succulent ground beef patty,",
      //imagePath: "assets/images/burgers/bluemoon.png",
      imagePath: "assets/images/burgers/bluemoon_burger.png",
      price: 9.49,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Sauteed Mushrooms", price: 0.99),
        Addon(name: "Fried Egg", price: 1.49),
        Addon(name: "Spicy Mayo", price: 0.99),
      ],
    ),
    //Salads
    Food(
      name: "Caesar Salads",
      description:
          "Crisp romaine lettuce, parmesam cheese, croutons, and Caesar dressing.",
      //imagePath: "assets/images/salads/caesar_salad.png",
      imagePath: "assets/images/pizza.png",
      price: 7.49,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 0.99),
        Addon(name: "Anchovies", price: 1.49),
        Addon(name: "Extra Parmesan", price: 1.99),
      ],
    ),
    Food(
      name: "Greek Salad",
      description:
          "Tomatoes, cucumbers, red onions, olives, feta cheese with olive oil and herbs.",
      //imagePath: "assets/images/salads/greek_salad.png",
      imagePath: "assets/images/pizza.png",
      price: 8.49,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Feta Cheese", price: 0.99),
        Addon(name: "Kalamata Olives", price: 1.49),
        Addon(name: "Grilled Shrimp", price: 1.99),
      ],
    ),
    Food(
      name: "Quinoa Salad",
      description:
          "Quinoa mixed with cucumbers, tomatoes, bell peppers, and a lemon vinaigrette.",
      //imagePath: "assets/images/salads/quinoa_salad.png",
      imagePath: "assets/images/pizza1.png",
      price: 8.49,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Avocado", price: 0.99),
        Addon(name: "Feta Cheese", price: 1.49),
        Addon(name: "Grilled Chicken", price: 1.99),
      ],
    ),
    Food(
      name: "Asian Sesame Salad",
      description:
          "Delight in the flavors of the East with this sesame-infused salad.",
      //imagePath: "assets/images/salads/asiansesame_salad.png",
      imagePath: "assets/images/pizza2.png",
      price: 8.49,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Mandarin Oranges", price: 0.99),
        Addon(name: "Almond Slivers", price: 1.49),
        Addon(name: "Extra Teriyaki Chicken", price: 1.99),
      ],
    ),
    Food(
      name: "South West Chicken Salad",
      description:
          "This colorful salad combines the zesty flavors of the Southest. ",
      //imagePath: "assets/images/salads/asiansesame_salad.png",
      imagePath: "assets/images/pizza2.png",
      price: 8.49,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Sour Cream", price: 0.99),
        Addon(name: "Pico de Gallo", price: 1.49),
        Addon(name: "Guacamole", price: 1.99),
      ],
    ),
    //Sides
    Food(
      name: "Sweet Potato Fries",
      description: " Crispy sweet potato fries with a touch of salt. ",
      //imagePath: "assets/images/sides/sweet_potato_side.png",
      imagePath: "assets/images/pizza2.png",
      price: 8.49,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Cheese Sauce", price: 0.99),
        Addon(name: "Truffle Oil", price: 1.49),
        Addon(name: "Cajun Spice", price: 1.99),
      ],
    ),
    Food(
      name: "Onion Rings",
      description: "Golden and crispy onion rings, perfect for dipping",
      //imagePath: "assets/images/sides/onion_rings_side.png",
      imagePath: "assets/images/pizza3.png",
      price: 3.49,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Ranch Dip", price: 0.99),
        Addon(name: "Spicy Mayo", price: 1.49),
        Addon(name: "Parmesan", price: 1.99),
      ],
    ),
    Food(
      name: "Garlic Bread",
      description:
          "Warm and toasty garlic bread, topped with melted butter and parsley",
      //imagePath: "assets/images/sides/garlic_bread_side.png",
      imagePath: "assets/images/pizza1.png",
      price: 4.49,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra Garlic", price: 0.99),
        Addon(name: "Mozzarella", price: 1.49),
        Addon(name: "Marinara Dip", price: 1.99),
      ],
    ),
    Food(
      name: "Loaded Sweet Potato Fries",
      description:
          "Savory Sweet potato fries loaded with melted cheese, smoky bacon bits, and a dollop of",
      //imagePath: "assets/images/sides/loadedfries_side.png",
      imagePath: "assets/images/pizza3.png",
      price: 4.49,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Sour Cream", price: 0.99),
        Addon(name: "Bacon Bits", price: 1.49),
        Addon(name: "Green Onions", price: 1.99),
      ],
    ),
    Food(
      name: "Crispy Mac & Cheese Bits",
      description:
          "Golden brown, bite-sized mac and cheese balls, perfect for on-the-go snacking.",
      //imagePath: "assets/images/sides/loadedfries_side.png",
      imagePath: "assets/images/pizza3.png",
      price: 4.49,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Bacon Bits", price: 0.99),
        Addon(name: "Jalapeno Slices", price: 1.49),
        Addon(name: "Sriracha Drizzle", price: 1.99),
      ],
    ),
    //deserts
    Food(
      name: "Chocolate Brownie",
      description:
          "Rich and fudgy chocolate brownie, with chunks of chocolate.",
      //imagePath: "assets/images/dessets/brownie_dessert.png",
      imagePath: "assets/images/pizza4.png",
      price: 5.49,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Vanilla Ice Cream", price: 0.99),
        Addon(name: "Hot Fudge", price: 1.49),
        Addon(name: "Whipped Cream", price: 1.99),
      ],
    ),
    Food(
      name: "Cheesecake",
      description:
          "Creamy cheesecake on a grahom cracker crust, with a berry compote",
      //imagePath: "assets/images/dessets/cheesecake_dessert.png",
      imagePath: "assets/images/pizza4.png",
      price: 6.49,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Strawberry Topping", price: 0.99),
        Addon(name: "Blueberry Compote", price: 1.49),
        Addon(name: "Chocolate Chips", price: 1.99),
      ],
    ),

    Food(
      name: "Apple Pie",
      description:
          "Classic apple pie with a flaky crust and a cinnamon-spiced apple filling",
      //imagePath: "assets/images/dessets/cheesecake_dessert.png",
      imagePath: "assets/images/pizza4.png",
      price: 5.49,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Caramel Sauce", price: 0.99),
        Addon(name: "Vanilla Ice Cream", price: 1.49),
        Addon(name: "Cinnamon Spice", price: 1.99),
      ],
    ),
    Food(
      name: "Red Velvet Lava Cake",
      description:
          "A delectable red velvet cake with a warm, gooey chocolate lava center, served with a....",
      //imagePath: "assets/images/dessets/redvelvet_dessert.png",
      imagePath: "assets/images/pizza2.png",
      price: 5.49,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Raspberry Sauce", price: 0.99),
        Addon(name: "Cream Cheese Icing", price: 1.49),
        Addon(name: "Chocolate Sprinkles", price: 1.99),
      ],
    ),
    Food(
      name: "Red Velvet Lava Cake",
      description:
          "A delectable red velvet cake with a warm, gooey chocolate lava center, served with a....",
      //imagePath: "assets/images/dessets/redvelvet_dessert.png",
      imagePath: "assets/images/pizza2.png",
      price: 5.49,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Raspberry Sauce", price: 0.99),
        Addon(name: "Cream Cheese Icing", price: 1.49),
        Addon(name: "Chocolate Sprinkles", price: 1.99),
      ],
    ),
    //drinks
    Food(
      name: "Lemonade",
      description:
          "Refreshing lemonade made with real lemons and a touch of sweetness",
      //imagePath: "assets/images/drinks/lemonade_drink.png",
      imagePath: "assets/images/pizza2.png",
      price: 2.49,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Strawberry Flavor", price: 0.99),
        Addon(name: "Mint Leaves", price: 1.49),
        Addon(name: "Ginger Zest", price: 1.99),
      ],
    ),
    Food(
      name: "Iced Tea",
      description: "Chilled iced tea with a hint of lemon, served over ice",
      //imagePath: "assets/images/drinks/ice_tea_drink.png",
      imagePath: "assets/images/pizza1.png",
      price: 2.49,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Peach Flavor", price: 0.99),
        Addon(name: "Lemon Slices", price: 1.49),
        Addon(name: "Honey", price: 1.99),
      ],
    ),
    Food(
      name: "Smoothie",
      description:
          "A blend of fresh fruits and yogurt, perfect for a healthy boost",
      //imagePath: "assets/images/drinks/smoothie_drink.png",
      imagePath: "assets/images/pizza1.png",
      price: 2.49,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Peach Flavor", price: 0.99),
        Addon(name: "Lemon Slices", price: 1.49),
        Addon(name: "Honey", price: 1.99),
      ],
    ),

    Food(
      name: "Mojito",
      description:
          "A classic Cuban cocktail with muddled lime and mint, sweetended with sugar",
      //imagePath: "assets/images/mojito_drink.png",
      imagePath: "assets/images/chinese.png",
      price: 4.49,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Mint", price: 0.49),
        Addon(name: "Raspberry Puree", price: 0.99),
        Addon(name: "Splash of Coconut Rum", price: 1.99),
      ],
    ),
    Food(
      name: "Caramel Macchhiato",
      description:
          "A layered coffee drink with steamed milk, espresso, and vanilla syrup",
      //imagePath: "assets/images/drinks/caramel_drink.png",
      imagePath: "assets/images/pan.png",
      price: 4.49,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Shot of Espresso", price: 0.99),
        Addon(name: "Hazelnut Syrup", price: 0.49),
        Addon(name: "Whipped Cream", price: 0.99),
      ],
    ),

  ];
}
