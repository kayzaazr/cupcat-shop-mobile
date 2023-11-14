import 'package:flutter/material.dart';
import 'package:cupcat_shop/models/cupcat_items.dart';
import 'package:cupcat_shop/widgets/left_drawer.dart';

class ProductListPage extends StatelessWidget {
  final List<Cupcat> products; 

  const ProductListPage({Key? key, required this.products})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Produk'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      drawer: const LeftDrawer(),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 5,
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            child: ListTile(
              title: Text(products[index].name),
              subtitle: Text('Harga: ${products[index].price}'),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text(products[index].name),
                      content: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('Harga: ${products[index].price}'),
                          Text('Deskripsi: ${products[index].description}'),
                          Text('Sweetness: ${products[index].sweetness}'),
                          Text('Amount: ${products[index].amount}'),
                        ],
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Tutup'),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          );
        },
      ),
    );
  }
}