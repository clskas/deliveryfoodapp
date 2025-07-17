import 'package:deliveryfood/components/my_receipt.dart';
import 'package:deliveryfood/models/restaurant.dart';
import 'package:deliveryfood/services/database/firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DeliveryProgressPage extends StatefulWidget {
  const DeliveryProgressPage({super.key});

  @override
  State<DeliveryProgressPage> createState() => _DeliveryProgressPageState();
}

class _DeliveryProgressPageState extends State<DeliveryProgressPage> {
  //get access to db
  FirestoreService db = FirestoreService();

  @override
  void initState() {
    super.initState();
    // if we get to this page, submit order to firestore db
    String receipt = context.read<Restaurant>().displayCartReceipt();
    db.saveOrderToDatabase(receipt);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent),
      bottomNavigationBar: _buildBottomNaBar(context),
      body: Column(children: [MyReceipt()]),
    );
  }

  // Custom Bottom Nav Bar - Message / Call Delivery driver
  Widget _buildBottomNaBar(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40.0),
          topRight: Radius.circular(40.0),
        ),
      ),
      padding: EdgeInsets.all(25.0),
      child: Row(
        children: [
          //profile pic of driver
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              shape: BoxShape.circle,
            ),
            child: IconButton(onPressed: () {}, icon: Icon(Icons.person)),
          ),
          // driver details
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Cls Kas",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              Text(
                "Driver",
                style: TextStyle(color: Theme.of(context).colorScheme.primary),
              ),
            ],
          ),
          Spacer(),

          Row(
            children: [
              //message button
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.message),
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              SizedBox(width: 10.0),
              //call button
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.call),
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
