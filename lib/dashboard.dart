import 'package:flutter/material.dart';
import 'equipment_card.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AgriIQ'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 245, 209, 221),
        actions: [
          IconButton(
            icon: const Icon(Icons.phone, color: Colors.white),
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text("Placing Call"),
                    content: const Text("Calling AgriRent support..."),
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
          ),
        ],
      ),
      body: ListView(
        children: const [
          EquipmentCard(
            imageUrl: 'assets/images/f.png',
            title: 'Tractor',
            price: '\$3,990',
          ),
          EquipmentCard(
            imageUrl: 'assets/images/fo.png',
            title: 'Harvestor',
            price: '\$7,490',
          ),
          EquipmentCard(
            imageUrl: 'assets/images/s.png',
            title: 'Sugar cane harvestor',
            price: '\$4,990',
          ),
          EquipmentCard(
            imageUrl: 'assets/images/t.png',
            title: 'Gear Pro',
            price: '\$3,990',
          ),
        ],
      ),
    );
  }
}