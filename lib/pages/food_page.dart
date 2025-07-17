import 'package:deliveryfood/components/my_button.dart';
import 'package:deliveryfood/models/food.dart';
import 'package:deliveryfood/models/restaurant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FoodPage extends StatefulWidget {
  final Food food;
  final Map<Addon, bool> selectedAddons = {};
  FoodPage({super.key, required this.food}) {
    // initialize selected addons to be false
    for (Addon addon in food.availableAddons) {
      selectedAddons[addon] = false;
    }
  }

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  //method to add to cart
  void addToCart(Food food, Map<Addon, bool> selectedAddons) {
    // close the current food page to go back to menu
    Navigator.pop(context);

    //format the selected addons
    List<Addon> currentlySelectedAddons = [];
    for (Addon addon in widget.food.availableAddons) {
      if (widget.selectedAddons[addon] == true) {
        currentlySelectedAddons.add(addon);
      }
    }
    //add to cart
    context.read<Restaurant>().addToCart(food, currentlySelectedAddons);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //scaffold UI
        Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                //food image
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Image.asset(widget.food.imagePath),
                ),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //food name
                      Text(
                        widget.food.name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                      //food price
                      Text(
                        '\$${widget.food.price}',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: 16.0,
                        ),
                      ),

                      SizedBox(height: 10.0),

                      //food description
                      Text(widget.food.description),
                      SizedBox(height: 10.0),

                      Text(
                        "Add-ons",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Divider(color: Theme.of(context).colorScheme.secondary),
                      SizedBox(height: 10.0),

                      // addons
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: ListView.builder(
                          itemCount: widget.food.availableAddons.length,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          padding: EdgeInsets.zero,
                          itemBuilder: (context, index) {
                            // get individual
                            Addon addon = widget.food.availableAddons[index];

                            //return check box UI
                            return CheckboxListTile(
                              title: Text(addon.name),
                              subtitle: Text(
                                '\$${addon.price}',
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              ),
                              value: widget.selectedAddons[addon],
                              onChanged: (bool? value) {
                                setState(() {
                                  widget.selectedAddons[addon] = value!;
                                });
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),

                //button -> add to cart
                MyButton(
                  onTap: () => addToCart(widget.food, widget.selectedAddons),
                  text: "Add to cart",
                ),
                SizedBox(height: 25.0),
              ],
            ),
          ),
        ),

        //back button
        SafeArea(
          child: Opacity(
            opacity: 0.6,
            child: Container(
              margin: EdgeInsets.only(left: 10.0, top: 10.0),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: Icon(Icons.arrow_back_ios_rounded),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
