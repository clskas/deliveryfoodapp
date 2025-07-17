import 'package:deliveryfood/components/my_button.dart';
import 'package:deliveryfood/pages/delivery_progress_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;

  @override
  Widget build(BuildContext context) {
    //user wants to pay
    void userTappedPay() {
      if (formKey.currentState!.validate()) {
        //only show dialog if form is valid
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text("Confirm payment"),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  Text("Card Number: $cardNumber"),
                  Text("Expire Date: $expiryDate"),
                  Text("Card Holder: $cardHolderName"),
                  Text("CVV: $cvvCode"),
                ],
              ),
            ),
            actions: [
              //cancel
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text("Cancel"),
              ),

              //yes button
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DeliveryProgressPage(),
                    ),
                  );
                },
                child: Text("Yes"),
              ),
            ],
          ),
        );
      }
    }

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Checkout"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //credit card
            CreditCardWidget(
              cardNumber: cardNumber,
              expiryDate: expiryDate,
              cardHolderName: cardHolderName,
              cvvCode: cvvCode,
              showBackView: isCvvFocused,
              animationDuration: Duration(microseconds: 1200),
              onCreditCardWidgetChange: (p0) {},
              //onCreditCardWidgetChange: (p0) {},
            ),

            // credit card form
            CreditCardForm(
              cardNumber: cardNumber,
              expiryDate: expiryDate,
              cardHolderName: cardHolderName,
              cvvCode: cvvCode,
              onCreditCardModelChange: (data) {
                setState(() {
                  cardNumber = data.cardNumber;
                  expiryDate = data.expiryDate;
                  cardHolderName = data.cardHolderName;
                  cvvCode = data.cvvCode;
                });
              },
              formKey: formKey,
            ),

            SizedBox(height: 80.0),
            MyButton(text: "Pay now", onTap: userTappedPay),
            const SizedBox(height: 25.0),
          ],
        ),
      ),
    );
  }
}
