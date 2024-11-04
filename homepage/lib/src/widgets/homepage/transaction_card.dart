import 'package:flutter/material.dart';

import 'tag.dart';

class TransactionCard extends StatelessWidget{

  final String label;
  final String price;
  // final Color bgColor;

  const TransactionCard({
    Key? key,
    required this.label,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: const Color.fromARGB(15, 226, 223, 223).withOpacity(0.2),
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(15, 226, 223, 223),
            spreadRadius: 2,
            blurRadius: 8,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          const TagCard(label: 'Bills & Payments'),

          const SizedBox(height: 8),

          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 6.0),
                child: Row(
                  children: [
                    
                  ],
                ),
              ),
              Text(
                label,
                style: const TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const Spacer(),

              Text(
                price,
                style: const TextStyle(
                  fontSize: 16.0,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}