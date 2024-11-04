import 'package:flutter/material.dart';

class BalanceCard extends StatelessWidget {
  final String currency;
  final double balance;
  final Function() onSend;
  final Function() onReceive;
  final Function() onBill;
  final Function() onMore;

  const BalanceCard({
    Key? key,
    required this.currency,
    required this.balance,
    required this.onSend,
    required this.onReceive,
    required this.onBill,
    required this.onMore,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: const Color.fromARGB(15, 226, 223, 223).withOpacity(0.2),
        borderRadius: BorderRadius.circular(16),
        boxShadow: const[
          BoxShadow(
            color: Color.fromARGB(15, 226, 223, 223),
            spreadRadius: 2,
            blurRadius: 8,
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Total Balance',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              const SizedBox(width: 8),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  currency,
                  style: const TextStyle(
                    color: Color(0xFF315EE7),
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            '\$${balance.toStringAsFixed(2)}',
            style: const TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Color(0xFF315EE7),
            ),
          ),

          const Text(
            'cashflow: +2000',
            style: TextStyle(
              color: Colors.green,
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 8),
          
          const Divider(
            color: Colors.black, // Color of the line
            thickness: 1,       // Thickness of the line
            indent: 16,         // Start padding
            endIndent: 16,      // End padding
          ),

          const SizedBox(height: 8),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildActionButton(
                icon: Icons.send,
                label: 'Send',
                color: Color(0xFF315EE7),
                onTap: onSend,
              ),
              _buildActionButton(
                icon: Icons.download,
                label: 'Receive',
                color: Colors.orange,
                onTap: onReceive,
              ),
              _buildActionButton(
                icon: Icons.receipt,
                label: 'Bill',
                color: Colors.green,
                onTap: onBill,
              ),
              _buildActionButton(
                icon: Icons.more_horiz,
                label: 'More',
                color: Colors.teal,
                onTap: onMore,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildActionButton({
    required IconData icon,
    required String label,
    required Color color,
    required Function() onTap,
  }) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: CircleAvatar(
            radius: 24,
            backgroundColor: color.withOpacity(0.2),
            child: Icon(icon, color: color),
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
