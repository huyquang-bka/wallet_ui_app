import 'package:flutter/material.dart';

class BankCard extends StatelessWidget {
  final String imageIconPath;
  final double balance;
  final int cardNumber;
  final int endMonth;
  final int endYear;
  final color;

  const BankCard(
      {super.key,
      required this.imageIconPath,
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
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Text balance
                const Text(
                  "Balance",
                  style: TextStyle(color: Colors.white),
                ),
                //Type Card
                Image.asset(
                  imageIconPath,
                  width: 40,
                  height: 40,
                ),
              ],
            ),
            const SizedBox(height: 10),
            //Total money
            Text(
              "\$ $balance",
              style: const TextStyle(color: Colors.white, fontSize: 24),
            ),
            const SizedBox(height: 10),
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
