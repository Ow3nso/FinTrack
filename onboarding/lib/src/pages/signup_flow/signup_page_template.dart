import 'package:flutter/material.dart';
import 'package:onboarding/src/widgets/button.dart';

class SignUpPageTemplate extends StatefulWidget {
  final String title;
  final String subtitle;
  final List<Widget> inputFields;
  final String buttonText;
  final VoidCallback onButtonPressed;

  const SignUpPageTemplate({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.inputFields,
    required this.buttonText,
    required this.onButtonPressed,
  }) : super(key: key);

  @override
  _SignUpPageTemplateState createState() => _SignUpPageTemplateState();
}

class _SignUpPageTemplateState extends State<SignUpPageTemplate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              widget.subtitle,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 16.0,
              ),
            ),
            const SizedBox(height: 32),
            ...widget.inputFields, // Dynamic input fields
            const Spacer(),
            Center(
              child: CustomButton(
                label: widget.buttonText,
                onPressed: widget.onButtonPressed,
                color: const Color(0xFF315EE7),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
