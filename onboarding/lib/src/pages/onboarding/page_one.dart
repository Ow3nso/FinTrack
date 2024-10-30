import 'package:flutter/material.dart';
import '../../widgets/button.dart';

class OnboardingPage extends StatefulWidget {
  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<String> images = [
    'packages/onboarding/lib/src/assets/Trust.png',
    'packages/onboarding/lib/src/assets/Send_money_abroad.png',
    'packages/onboarding/lib/src/assets/Receive_Money.png'
  ];

  final List<String> descriptions = [
    'Trusted by millions of people, part of one part',
    'Send money abroad, and track your expense',
    'Receive Money From Anywhere In The World'
  ];

  void _onPageChanged(int page) {
    setState(() {
      _currentPage = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: _onPageChanged,
              itemCount: images.length,
              itemBuilder: (context, index) => OnboardingContent(
                imagePath: images[index],
                description: descriptions[index],
                currentPage: _currentPage,
                totalDots: images.length,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: CustomButton(
              label: _currentPage == images.length - 1 ? 'Get Started' : 'Next',
              onPressed: () {
                if (_currentPage == images.length - 1) {
                  // Navigate to the next screen or home screen
                  Navigator.pushReplacementNamed(context, '/getStarted');
                } else {
                  _pageController.nextPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                }
              },
              color: Color(0xFF315EE7),
              textColor: Colors.white,
              width: double.infinity,
              height: 50,
            ),
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}

class OnboardingContent extends StatelessWidget {
  final String imagePath;
  final String description;
  final int currentPage;
  final int totalDots;

  const OnboardingContent({
    Key? key,
    required this.imagePath,
    required this.description,
    required this.currentPage,
    required this.totalDots,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(imagePath),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              totalDots,
              (index) => AnimatedContainer(
                duration: Duration(milliseconds: 300),
                margin: EdgeInsets.symmetric(horizontal: 4.0),
                height: 8.0,
                width: currentPage == index ? 24.0 : 8.0,
                decoration: BoxDecoration(
                  color: currentPage == index ? Colors.blue : Colors.white,
                  borderRadius: BorderRadius.circular(4.0),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          
          Text(
            description,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
