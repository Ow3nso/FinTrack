import 'package:flutter/material.dart';

import '../widgets/homepage/balance_card.dart';
import '../widgets/homepage/category_card.dart';
import '../widgets/homepage/transaction_card.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leadingWidth: double.infinity,
        toolbarHeight: 50,
        backgroundColor: Colors.black,
        title: const Padding(
          padding: EdgeInsets.only(left: 6.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hi, Ow3nso',
                style: TextStyle(
                  fontSize: 16.0
                ),
              ),
              Text(
                'Good Morning',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    //navigate to notification page
                    print("Notification panel tapped");
                  },
                   child: const Icon(Icons.notifications),
                ),
              ],
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BalanceCard(
              currency: 'USD',
              balance: 50000.00,
              onSend: () {
                print("Send tapped");
              },
              onReceive: () {
                print("Receive tapped");
              },
              onBill: () {
                print("Bill tapped");
              },
              onMore: () {
                print("More tapped");
              },
            ),

            const SizedBox(height: 16.0),

            Row(
              children: [
                const Text(
                  'Spending by category',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const Spacer(),

                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'See all',
                    style: TextStyle(
                      color: Color(0xFF315EE7),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 16.0),

            Row(
              children: [
                CategoryCard(
                  label: 'Payments', 
                  balance: '2000 USDT',
                  bgColor: const Color.fromARGB(15, 226, 223, 223).withOpacity(0.2),
                ),

                const Spacer(),

                CategoryCard(
                  label: 'Income', 
                  balance: '2000 USDT',
                  bgColor: const Color.fromARGB(15, 226, 223, 223).withOpacity(0.2),
                ),
              ],
            ),

            const SizedBox(height: 16.0),

            Row(
              children: [
                CategoryCard(
                  label: 'Bills', 
                  balance: '2000 USDT',
                  bgColor: const Color.fromARGB(15, 226, 223, 223).withOpacity(0.2),
                ),

                const Spacer(),

                CategoryCard(
                  label: 'Savings', 
                  balance: '2000 USDT',
                  bgColor: const Color.fromARGB(15, 226, 223, 223).withOpacity(0.2),
                ),
              ],
            ),

            const SizedBox(height: 16.0),

            Row(
              children: [
                const Text(
                  'Transactions',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const Spacer(),

                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'See all',
                    style: TextStyle(
                      color: Color(0xFF315EE7),
                    ),
                  ),
                ),
              ],
            ),

            const TransactionCard(label: 'DroidCon Ticket', price: '-2000 USDT'),
            const SizedBox(height: 16.0),
            const TransactionCard(label: 'DroidCon Ticket', price: '-2000 USDT'),
            const SizedBox(height:16.0),
            const TransactionCard(label: 'DroidCon Ticket', price: '-2000 USDT')
          ],
        ),
      ),
    );
  }
}