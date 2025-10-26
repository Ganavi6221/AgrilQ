import 'package:flutter/material.dart';

class EquipmentCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String price;

  const EquipmentCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                imageUrl,
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 4),
                  Text(price,
                      style: const TextStyle(
                          fontSize: 14, color:Color.fromARGB(255, 248, 152, 184))),
                  const SizedBox(height: 8),
                  ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text("Rent Equipment"),
                            content: const Text("Renting this equipment..."),
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
                    style: ElevatedButton.styleFrom(
                      backgroundColor:const Color.fromARGB(255, 134, 21, 59),
                                            padding: const EdgeInsets.symmetric(horizontal: 20),
                    ),
                    child: const Text("Rent",style: TextStyle(color: Colors.white),)
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}