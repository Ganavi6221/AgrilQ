import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 241, 227, 232),
      appBar: AppBar(
        title: const Text('About AgriIQ'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 121, 7, 45),
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Problem Section
            _buildSection(
              title: 'The Problem We Solve',
              icon: Icons.warning,
              children: [
                _buildBulletPoint('Small and mid-scale farmers struggle to access expensive farming equipment'),
                _buildBulletPoint('High costs make purchasing impossible, rental services are limited'),
                _buildBulletPoint('Equipment owners have machines sitting idle, wasting resources'),
                _buildBulletPoint('Farmers need guidance on which equipment to use and when'),
              ],
            ),

            const SizedBox(height: 30),

            // Solution Section
            _buildSection(
              title: 'Our Solution',
              icon: Icons.lightbulb,
              children: [
                _buildBulletPoint('Rent farm equipment on-demand via app or phone call'),
                _buildBulletPoint('Connect with nearby machine owners for affordable rentals'),
                _buildBulletPoint('Encourage equipment sharing to optimize underutilized machinery'),
                _buildBulletPoint('AI-powered recommendations for best equipment based on crop type and season'),
              ],
            ),

            const SizedBox(height: 30),

            // Value Proposition Section
            _buildSection(
              title: 'Why Choose AgriIQ?',
              icon: Icons.flag,
              children: [
                _buildBulletPoint('Multilingual & call-based booking accessible for all farmers'),
                _buildBulletPoint('Instant, on-demand access without middlemen or delays'),
                _buildBulletPoint('Empowers equipment owners by monetizing idle machinery'),
                _buildBulletPoint('AI-driven recommendations ensure right equipment for every crop & season'),
              ],
            ),

            const SizedBox(height: 30),

            // Mission Statement
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 135, 247, 121),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Column(
                children: [
                  Icon(
                    Icons.agriculture,
                    size: 40,
                    color: Color.fromARGB(255, 121, 7, 45),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Providing Smart, Affordable, and Accessible Farm Equipment Rentals—Anytime, Anywhere.',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 121, 7, 45),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            // Customer Segments
            _buildSection(
              title: 'Who We Serve',
              icon: Icons.people,
              children: [
                _buildBulletPoint('Small & Mid-Scale Farmers - Affordable equipment access'),
                _buildBulletPoint('Large Farm Owners - Generate extra income from idle equipment'),
              ],
            ),

            const SizedBox(height: 30),

            // Features
            _buildSection(
              title: 'Key Features',
              icon: Icons.star,
              children: [
                _buildBulletPoint('AI-Powered Equipment Matching'),
                _buildBulletPoint('Multilingual & Call-Based Access'),
                _buildBulletPoint('Peer-to-Peer Rentals - No Middlemen'),
                _buildBulletPoint('Real-Time Booking & Tracking'),
              ],
            ),

            const SizedBox(height: 40),

            // Contact/Footer
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 121, 7, 45),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Column(
                children: [
                  Text(
                    'AgriIQ - Empowering Farmers Through Technology',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Making farming equipment accessible to every farmer, regardless of technical knowledge or location.',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white70,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSection({
    required String title,
    required IconData icon,
    required List<Widget> children,
  }) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: const Color.fromARGB(255, 121, 7, 45)),
              const SizedBox(width: 8),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 121, 7, 45),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          ...children,
        ],
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '• ',
            style: TextStyle(
              fontSize: 16,
              color: Color.fromARGB(255, 121, 7, 45),
            ),
          ),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.black87,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}