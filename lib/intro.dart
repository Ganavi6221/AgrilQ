import 'package:flutter/material.dart';
import 'dashboard.dart';
import 'about.dart'; // ADD: Import the About screen

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 241, 227, 232),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // UPDATED: Functional Navigation Bar
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      Icon(Icons.agriculture, size: 32, color: Color.fromARGB(255, 121, 7, 45)),
                      SizedBox(width: 10),
                      Text(
                        'AgriIQ',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 121, 7, 45),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      TextButton(
                        onPressed: () {
                          // Scroll to top or highlight home
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('You are already on Home')),
                          );
                        },
                        child: const Text(
                          'Home',
                          style: TextStyle(color: Colors.black87, fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(width: 20),
                      TextButton(
                        onPressed: () {
                          // Navigate to Dashboard (Equipment page)
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => const DashboardScreen()),
                          );
                        },
                        child: const Text(
                          'Equipment',
                          style: TextStyle(color: Colors.black87, fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(width: 20),
                      TextButton(
                        onPressed: () {
                          // ADD: Navigate to About page
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => const AboutScreen()),
                          );
                        },
                        child: const Text(
                          'About',
                          style: TextStyle(color: Colors.black87, fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Hero Section
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 80),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Harvest More,\nWorry Less',
                          style: TextStyle(
                            fontSize: 48,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 121, 7, 45),
                            height: 1.1,
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          'Your Farm, Powered by AgriRent',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                            height: 1.6,
                          ),
                        ),
                        const SizedBox(height: 30),
                        Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (_) => const DashboardScreen()),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromARGB(255, 135, 247, 121),
                                padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 18),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child: const Text(
                                'Get Started',
                                style: TextStyle(
                                  fontSize: 16, 
                                  color: Color.fromARGB(221, 184, 19, 120), 
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                            const SizedBox(width: 15),
                            OutlinedButton(
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: const Text("Call Support"),
                                      content: const Text("Calling our agricultural experts...\n\nPhone: 1800-AGRIIQ"),
                                      actions: [
                                        TextButton(
                                          child: const Text("OK"),
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                              style: OutlinedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 18),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                side: const BorderSide(color: Color.fromARGB(255, 121, 7, 45)),
                              ),
                              child: const Text(
                                'Call for Help',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 121, 7, 45), 
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 60),
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'assets/images/logo.png',
                        height: 400,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            height: 400,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 135, 247, 121),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Icon(
                              Icons.agriculture,
                              size: 100,
                              color: Color.fromARGB(255, 121, 7, 45),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Features Section
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 60),
              color: Colors.white,
              child: Column(
                children: [
                  const Text(
                    'Why Choose AgriIQ?',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 121, 7, 45),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildFeature(
                        icon: Icons.phone_in_talk,
                        title: 'Easy Call Booking',
                        description: 'Just call us to book any equipment',
                      ),
                      _buildFeature(
                        icon: Icons.agriculture,
                        title: 'Quality Equipment',
                        description: 'Well-maintained farm machinery',
                      ),
                      _buildFeature(
                        icon: Icons.delivery_dining,
                        title: 'Fast Delivery',
                        description: 'Equipment delivered to your farm',
                      ),
                      _buildFeature(
                        icon: Icons.psychology,
                        title: 'AI Powered',
                        description: 'Smart equipment recommendations',
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // UPDATED: Footer with functional buttons
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
              color: const Color.fromARGB(255, 241, 227, 232),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    '© 2024 AgriIQ. All rights reserved.',
                    style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: const Text("Call Us"),
                                content: const Text("Phone: 1800-AGRIIQ\n(1800-2474477)"),
                                actions: [
                                  TextButton(
                                    child: const Text("OK"),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        icon: const Icon(Icons.phone, color: Color.fromARGB(255, 121, 7, 45)),
                      ),
                      IconButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: const Text("Email Us"),
                                content: const Text("support@agriiq.com"),
                                actions: [
                                  TextButton(
                                    child: const Text("OK"),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        icon: const Icon(Icons.email, color: Color.fromARGB(255, 121, 7, 45)),
                      ),
                      IconButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: const Text("Chat Support"),
                                content: const Text("Our chat support is available 24/7"),
                                actions: [
                                  TextButton(
                                    child: const Text("OK"),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        icon: const Icon(Icons.chat, color: Color.fromARGB(255, 121, 7, 45)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFeature({
    required IconData icon,
    required String title,
    required String description,
  }) {
    return Container(
      width: 220, // CHANGED: Slightly smaller for 4 items
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 241, 227, 232),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Icon(icon, size: 50, color: const Color.fromARGB(255, 121, 7, 45)),
          const SizedBox(height: 16),
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 121, 7, 45),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          Text(
            description,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.black87,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}