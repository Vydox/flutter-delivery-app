import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';

class OrderBottomBar extends StatelessWidget {
  final double totalPrice;

  const OrderBottomBar({
    super.key,
    required this.totalPrice,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Container(
        margin: const EdgeInsets.fromLTRB(20, 5, 20, 15),
        decoration: BoxDecoration(
          borderRadius: AppStyles.largeBorderRadius,
        ),
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Total price',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        '\$${totalPrice.toStringAsFixed(2)}',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: PrimaryButton(
                        buttonTitle: 'Make an order',
                        onPressed: () {},
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}