import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SubscriptionScreen extends StatelessWidget {
  const SubscriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
      ),
      body: ListView(

        padding: const EdgeInsets.all(16.0),
        children: [
          const Text(
            'Subscribe to Premium',
            style: TextStyle(
              fontFamily: 'PaynetB',
              fontWeight: FontWeight.w400,
              fontSize: 24,
              color: Color(0xFFD52525),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          const Text(
            'Enjoy listening songs & podcasts with better audio quality, without restrictions, and without ads.',
            style: TextStyle(
              fontFamily: 'PaynetB',
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Color(0xFF6A6A67),
            ),
            textAlign: TextAlign.center,
          ),
          SubscriptionCard(
            gradientColors: [Colors.orange, Colors.deepOrange],
            price: '\$9.99 /month',
            features: [
              'Listening with better audio quality',
              'Listening without restrictions & ads',
              'Shuffle play & download unlimited',
            ],
          ),
          SubscriptionCard(
            gradientColors: [Colors.purple, Colors.deepPurple],
            price: '\$19.99 /3 months',
            features: [
              'Listening with better audio quality',
              'Listening without restrictions & ads',
              'Shuffle play & download unlimited',
            ],
          ),
          SubscriptionCard(
            gradientColors: [Colors.pinkAccent, Colors.pink],
            price: '\$79.99 /12 months',
            features: [
              'Listening with better audio quality',
              'Listening without restrictions & ads',
              'Shuffle play & download unlimited',
            ],
          ),
        ],
      ),
    );
  }
}

class SubscriptionCard extends StatelessWidget {
  final List<Color> gradientColors;
  final String price;
  final List<String> features;

  SubscriptionCard({
    required this.gradientColors,
    required this.price,
    required this.features,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Center(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: LinearGradient(
              colors: gradientColors,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(Iconsax.crown, size: 32, color: Colors.white),
              const SizedBox(height: 8),
              Text(
                price,
                style: const TextStyle(
                  fontFamily: 'PaynetB',
                  fontWeight: FontWeight.w400,
                  fontSize: 24,
                  color: Color(0xFFFAF8F8),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Divider(height: 1,color: Colors.white,),
              ),
              for (var feature in features)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Row(
                    children: [
                      const Icon(Icons.check, color: Colors.white),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          feature,
                          style: const TextStyle(
                            fontFamily: 'PaynetB',
                            fontWeight: FontWeight.w400,
                            fontSize: 17,
                            color: Color(0xFFFAF8F8),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
