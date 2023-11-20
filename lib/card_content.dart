import 'package:flutter/material.dart';

class CardContent extends StatelessWidget {
  final String name;
  final String date;

  const CardContent({
    Key? key,
    required this.name,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(name, style: const TextStyle(fontSize: 20)),
          const SizedBox(height: 8),
          Text(
            date,
            style: const TextStyle(color: Colors.grey),
          ),
          Row(
            children: <Widget>[
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF162A49),
                  textStyle: const TextStyle(color: Colors.white),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                ),
                onPressed: () {},
                child: const Text('Reserve'),
              ),
              const SizedBox(
                  width: 8), // Añadido espacio entre el botón y el texto
              const Text(
                '0.00 \$',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
