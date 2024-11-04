import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String label;
  final String balance;
  final Color bgColor;

  const CategoryCard({
    Key? key,
    required this.label,
    required this.balance,
    required this.bgColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    InkWell(
      onTap: () {

      },
      child: Container(
        
      ),
    );
    return Container(
      width: MediaQuery.of(context).size.width * 0.43,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: bgColor,
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

          const CircleAvatar(
            radius: 24,
            backgroundColor: Colors.white,
            child: Icon(Icons.receipt),
          ),

          const SizedBox(height: 32.0),

          Text(
            label,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold
            ),
          ),
          
          Text(
            balance,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold
            ),
          )
        ],
      ),
    );
  }

  
}
