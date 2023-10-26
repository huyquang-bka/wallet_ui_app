import 'package:flutter/material.dart';

class BankCard extends StatelessWidget {
  final double balance;
  final int cardNumber;
  final int endMonth;
  final int endYear;
  final color;

  const BankCard(
      {super.key,
      required this.balance,
      required this.cardNumber,
      required this.endMonth,
      required this.endYear,
      this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15),
        ),
        width: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Type Card
            //Text balance
            const Text(
              "Balance",
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 10),
            //Total money
            Text(
              "\$ $balance",
              style: const TextStyle(color: Colors.white, fontSize: 24),
            ),
            const SizedBox(height: 20),
            //Card number and end date
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Card number
                Text(
                  "**** $cardNumber",
                  style: const TextStyle(color: Colors.white),
                ),
                //End date
                Text(
                  "$endMonth/$endYear",
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
