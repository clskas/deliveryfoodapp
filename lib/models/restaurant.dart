import 'package:collection/collection.dart';
import 'package:deliveryfood/models/cart_item.dart';
import 'package:deliveryfood/models/food.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Restaurant extends ChangeNotifier {
  //list of food menu
  final List<Food> _menu = [
    //burgers
    Food(
      name: "Classic Cheeseburger",
      description:
          "A juicy beet patty with melted, lettuce, tomato, and a hint of onion and picke",
      imagePath: "assets/images/burgers/classic-cheeseburger1-deluxe.png",
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
      imagePath: "assets/images/burgers/bbq_burger1.png",
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
      imagePath: "assets/images/burgers/vege_burger1.png",
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
      imagePath: "assets/images/burgers/aloha_burger1.png",
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
      imagePath: "assets/images/burgers/blue_moon_burger1.png",
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
      imagePath: "assets/images/salads/caesar_salad2.png",
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
      imagePath: "assets/images/salads/greek_salad3.png",
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
      imagePath: "assets/images/salads/quinoa_salad4.jpg",
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
      imagePath: "assets/images/salads/asiansesame_salad3.png",
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
      imagePath: "assets/images/salads/southwest_salad4.png",
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
      imagePath: "assets/images/sides/sweet_potato_side3.png",
      price: 8.49,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Cheese Sauce", price: 0.99),
        Addon(name: "Truffle Oil", price: 1.49),
        Addon(name: "Cajun Spice", price: 1.99),
      ],
    ),
    Food(
      name: "Onion Rings",
      description: "Golden and crispy onion rings, perfect for dipping",
      imagePath: "assets/images/sides/onion_rings_side3.png",
      price: 3.49,
      category: FoodCategory.sides,
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
      imagePath: "assets/images/sides/garlic_bread_side3.png",
      price: 4.49,
      category: FoodCategory.sides,
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
      imagePath: "assets/images/sides/loaded_fries_side1.png",
      price: 4.49,
      category: FoodCategory.sides,
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
      imagePath: "assets/images/sides/loaded_fries_side3.png",
      price: 4.49,
      category: FoodCategory.sides,
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
      imagePath:
          "assets/images/desserts/brownie_dessert_with_chocolate_and_ice_cream.png",
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
      imagePath: "assets/images/desserts/new_york_style_cheesecake.png",
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
      imagePath: "assets/images/desserts/apple_pie_transparent.png",
      price: 5.49,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Caramel Sauce", price: 0.99),
        Addon(name: "Vanilla Ice Cream", price: 1.49),
        Addon(name: "Cinnamon Spice", price: 1.99),
      ],
    ),
    Food(
      name: "Pear Pie",
      description:
          "Pear pie is a delicious dessert made with fresh, juicy pears baked in a buttery, flaky crust.",
      imagePath: "assets/images/desserts/pear_pie2.png",
      price: 5.49,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Pear Crumble Pie", price: 0.99),
        Addon(name: "Rustic Pear Galette", price: 1.49),
        Addon(name: "Pear and Almond Frangipane Tart", price: 1.99),
      ],
    ),
    Food(
      name: "Red Velvet Lava Cake",
      description:
          "A delectable red velvet cake with a warm, gooey chocolate lava center, served with a....",
      imagePath:
          "assets/images/desserts/strawberry_cheesecake_dessert_toast.png",
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
      imagePath: "assets/images/drinks/lemonade_drink.png",
      price: 2.49,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Strawberry Flavor", price: 0.99),
        Addon(name: "Mint Leaves", price: 1.49),
        Addon(name: "Ginger Zest", price: 1.99),
      ],
    ),
    Food(
      name: "Iced Tea",
      description: "Chilled iced tea with a hint of lemon, served over ice",
      imagePath: "assets/images/drinks/ice_tea_drink.png",
      price: 2.49,
      category: FoodCategory.drinks,
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
      imagePath: "assets/images/drinks/smoothie_drink2.png",
      price: 2.49,
      category: FoodCategory.drinks,
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
      imagePath: "assets/images/drinks/mojito_drink3.png",
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
      imagePath: "assets/images/drinks/caramel_drink3.png",
      price: 4.49,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Shot of Espresso", price: 0.99),
        Addon(name: "Hazelnut Syrup", price: 0.49),
        Addon(name: "Whipped Cream", price: 0.99),
      ],
    ),
  ];

  // user cart
  final List<CartItem> _cart = [];

  //delivery address(Which user can change/update)
  String _deliveryAdress = "99 Hollywood";

  /*
  
  GETTERS

  */

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;
  String get deliveryAdress => _deliveryAdress;

  /*
  
  OPERATIONS

  */

  // add to cart
  void addToCart(Food food, List<Addon> selectedAdddons) {
    // see if there is a cart item already with the same food and selected addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      // check if the food items are the same
      bool isSameFood = item.food == food;

      //check if the list of selected addons are the same
      bool isSameAddons = ListEquality().equals(
        item.selectedAddons,
        selectedAdddons,
      );
      return isSameFood && isSameAddons;
    });
    //if item already exists, increase it's quantity
    if (cartItem != null) {
      cartItem.quantity++;
    }
    //otherwise, add a new cart item to the cart
    else {
      _cart.add(CartItem(food: food, selectedAddons: selectedAdddons));
    }
    notifyListeners();
  }

  //remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      }
    } else {
      _cart.removeAt(cartIndex);
    }
    notifyListeners();
  }

  // get total price of cart
  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;
      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  //get total number of items in cart
  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  //clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  //update delivery adress
  void updateDeliveryAddress(String newAddress) {
    _deliveryAdress = newAddress;
    notifyListeners();
  }

  /*
  
  HELPERS

  */
  // generate a receipt
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt");
    receipt.writeln();

    //format the date to include up to seconds only
    String formattedDate = DateFormat(
      'yyyy-MM-dd HH:mm:ss',
    ).format(DateTime.now());
    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("============");
    for (final cartItem in _cart) {
      receipt.writeln(
        "${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}",
      );
      if (cartItem.selectedAddons.isNotEmpty) {
        receipt.writeln(
          "   Add-ons: ${_formatAddons(cartItem.selectedAddons)}",
        );
      }
      receipt.writeln();
    }

    receipt.writeln("============");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");
    receipt.writeln();
    receipt.writeln("Delivery to: $deliveryAdress");

    return receipt.toString();
  }

  // format double value into money
  String _formatPrice(double price) {
    return "\$${price.toStringAsFixed(2)}";
  }

  // format list of addons into a string summary
  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
        .join(", ");
  }
}
