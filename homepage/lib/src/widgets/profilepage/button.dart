import 'package:flutter/material.dart';

class SettingsButton extends StatelessWidget{

  final String title;
  final String description;
  final Color bgColor;
  final Icon icon;
  final void onPressed;

  const SettingsButton({
    Key? key,
    required this.title,
    required this.bgColor,
    required this.onPressed,

    this.description = '',
    this.icon = const Icon(null),
    // required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        // color: const Color.fromARGB(15, 226, 223, 223).withOpacity(0.2),
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

          // const TagCard(label: 'Bills & Payments'),

          const SizedBox(height: 8),

          Row(
            children: [
              icon,
              
              const Padding(
                padding: EdgeInsets.only(left: 6.0),
                child: Row(
                  children: [
                    
                  ],
                ),
              ),
              
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      description,
                      style: const TextStyle(
                        fontSize: 16.0,
                        color: Colors.grey,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),

              Spacer(),

              const Icon(Icons.arrow_forward_ios),
            ],
          )
        ],
      ),
    );
  }
}