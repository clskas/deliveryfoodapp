import 'package:deliveryfood/models/restaurant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyReceipt extends StatelessWidget {
  const MyReceipt({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.only(
        left: 25.0,
        right: 25,
        bottom: 25.0,
        top: 50.0,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Thank you for your order!"),
            SizedBox(height: 25.0),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Theme.of(context).colorScheme.secondary,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              padding: EdgeInsets.all(25.0),
              child: Consumer<Restaurant>(
                builder: (context, restaurant, child) =>
                    Text(restaurant.displayCartReceipt()),
              ),
            ),
            SizedBox(height: 25.0),
            Text("Estimated delivery time is: 4:10 PM"),
          ],
        ),
      ),
    );
  }
}
