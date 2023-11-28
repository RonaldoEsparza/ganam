import 'package:flutter/material.dart';

class ProductDetailsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalles del Producto'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Imagen con bordes redondos
            ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Image.network(
                'https://example.com/product_image.jpg', // Coloca la URL de tu imagen aquí
                height: 200.0,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 16.0),
            // Descripción del producto
            Text(
              'Descripción del producto...',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            // Fecha del producto
            Text(
              'Fecha: 01/01/2023',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 8.0),
            // Precio del producto
            Text(
              'Precio: \$99.99',
              style: TextStyle(fontSize: 16.0, color: Colors.green),
            ),
            SizedBox(height: 16.0),
            // Botón de comprar con bordes cuadrados
            ElevatedButton(
              onPressed: () {
                // Acciones cuando se presiona el botón
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                padding: EdgeInsets.all(16.0),
              ),
              child: Text(
                'Comprar Todo',
                style: TextStyle(fontSize: 18.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ProductDetailsView(),
  ));
}
