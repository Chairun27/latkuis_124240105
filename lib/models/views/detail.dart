import 'package:flutter/material.dart';
import 'package:latkuis_124240105/models/data.dart';

class DetailPage extends StatelessWidget {
  final Animal animal;

  const DetailPage({super.key, required this.animal});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          animal.name, // Supaya dapat kembali ke home page lagi 
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              // Gambar animals  
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.network(
                    animal.image,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => Container(
                      height: 250,
                      color: Colors.grey[300],
                      child: const Icon(Icons.broken_image, size: 80),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),

              // Detail animals 
              const Text(
                "Animal Details:",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),
              _detailRow("Name", animal.name),
              _detailRow("Type", animal.type),
              _detailRow("Height", "${animal.height} cm"),
              _detailRow("Weight", "${animal.weight} kg"),
              const SizedBox(height: 24),

              // Habitat animals 
              const Text(
                "Habitat",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),
              Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                children: animal.habitat.map((habitat) {
                  return Chip(
                    label: Text(habitat),
                    backgroundColor: Colors.brown[100],
                    side: BorderSide(color: Colors.brown.shade300),
                  );
                }).toList(),
              ),
              const SizedBox(height: 24),

              // Aktivitas animals 
              const Text(
                "Animal Activities",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),
              Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                children: animal.activities.map((activities) {
                  return Chip(
                    label: Text(activities),
                    backgroundColor: Colors.grey[200],
                    side: BorderSide(color: Colors.grey.shade400),
                  );
                }).toList(),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  // Widget bantuan supaya baris detail rapi
  Widget _detailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 80,
            child: Text(
              label,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.grey[700],
              ),
            ),
          ),
          const Text(": "),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
} 