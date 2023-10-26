import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_app_ui/models/bank_card.dart';
import 'package:wallet_app_ui/models/function_button.dart';
import 'package:wallet_app_ui/models/other_function.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentNavIndex = 0;
  final _cardPageController = PageController();

  void onNavTap(int index) {
    setState(() {
      _currentNavIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //color
      backgroundColor: Colors.grey[100],
      //floating action button
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        child: const Icon(
          Icons.monetization_on_outlined,
          size: 32,
        ),
      ),
      //bottom nav
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: onNavTap,
        currentIndex: _currentNavIndex,
        selectedItemColor: Colors.pink,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: 'Settings',
          ),
        ],
      ),
      //body
      body: SafeArea(
        child: Column(
          children: [
            //title and add button
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Title
                  const Row(
                    children: [
                      Text(
                        "My",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        " Cards",
                        style: TextStyle(fontSize: 28),
                      ),
                    ],
                  ),
                  //Add button
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.add),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            //bank card swiping area
            Container(
              height: 150,
              child: PageView(
                controller: _cardPageController,
                scrollDirection: Axis.horizontal,
                children: [
                  BankCard(
                    balance: 1000,
                    cardNumber: 1234,
                    endMonth: 12,
                    endYear: 25,
                    color: Colors.deepPurple[300],
                  ),
                  BankCard(
                    balance: 2000,
                    cardNumber: 5678,
                    endMonth: 12,
                    endYear: 25,
                    color: Colors.blue[300],
                  ),
                  BankCard(
                    balance: 3000,
                    cardNumber: 4321,
                    endMonth: 12,
                    endYear: 25,
                    color: Colors.green[300],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            //indicator
            SmoothPageIndicator(
              controller: _cardPageController,
              count: 3,
              effect: ExpandingDotsEffect(
                activeDotColor: Colors.grey.shade700,
              ),
            ),
            const SizedBox(height: 30),
            //function buttons
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  FunctionButton(
                    icon: Icons.send_outlined,
                    text: "Send",
                  ),
                  FunctionButton(
                    icon: Icons.payment_outlined,
                    text: "Pay",
                  ),
                  FunctionButton(
                    icon: Icons.receipt_outlined,
                    text: "Receipt",
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            //Column -> Statistic and Transaction
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  //Statistic
                  OtherFunction(
                    color: Colors.deepPurple.withOpacity(0.7),
                    imageIconPath: "lib/assets/icons/statistic.png",
                    title: "Statistic",
                    subtitle: "Payment and income",
                  ),
                  const SizedBox(height: 20),
                  //Transaction
                  OtherFunction(
                    color: Colors.deepOrange.withOpacity(0.7),
                    imageIconPath: "lib/assets/icons/transaction.png",
                    title: "Transaction",
                    subtitle: "Transaction history",
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
