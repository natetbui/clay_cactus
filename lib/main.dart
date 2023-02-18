// dart async library you will refer to when setting up real time updates
import 'dart:async';

// flutter and ui libraries
import 'package:flutter/material.dart';

// amplify packages you will need to use
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_datastore/amplify_datastore.dart';

// amplify configuration and models that should have been generated for you
import 'amplifyconfiguration.dart';
import 'models/ModelProvider.dart';
import 'models/Product.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Amplified Product',
      home: ProductsPage(),
    );
  }
}

class ProductsPage extends StatefulWidget {
  const ProductsPage({Key? key}) : super(key: key);

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  @override
  void initState() {
    // to be filled in a later step
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    // to be filled in a later step
  }

  Future<void> _initializeApp() async {
    // to be filled in a later step
  }

  Future<void> _configureAmplify() async {
    // to be filled in a later step
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Product List'),
      ),
      body: const Center(child: CircularProgressIndicator()),
      // body: _isLoading
      //     ? Center(child: CircularProgressIndicator())
      //     : ProductsList(products: _products),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddProductForm()),
          );
        },
        tooltip: 'Add Product',
        label: Row(
          children: const [Icon(Icons.add), Text('Add product')],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class ProductsList extends StatelessWidget {
  const ProductsList({
    required this.products,
    Key? key,
  }) : super(key: key);

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return products.isNotEmpty
        ? ListView(
            padding: const EdgeInsets.all(8),
            children: products.map((product) => ProductItem(product: product)).toList())
        : const Center(
            child: Text('Tap button below to add a product!'),
          );
  }
}

class ProductItem extends StatelessWidget {
  const ProductItem({
    required this.product,
    Key? key,
  }) : super(key: key);

  final double iconSize = 24.0;
  final Product product;

  void _deleteProduct(BuildContext context) async {
    // to be filled in a later step
  }

  Future<void> _toggleIsComplete() async {
    // to be filled in a later step
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          _toggleIsComplete();
        },
        onLongPress: () {
          _deleteProduct(context);
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.Name,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(product.Description ?? 'No description'),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

class AddProductForm extends StatefulWidget {
  const AddProductForm({Key? key}) : super(key: key);

  @override
  State<AddProductForm> createState() => _AddProductFormState();
}

class _AddProductFormState extends State<AddProductForm> {
  late final TextEditingController _nameController;
  late final TextEditingController _descriptionController;

  @override
  void initState() {
    _nameController = TextEditingController();
    _descriptionController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _nameController.dispose();
    _descriptionController.dispose();
  }

  Future<void> _saveProduct() async {
    // to be filled in a later step
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Product'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                controller: _nameController,
                decoration:
                    const InputDecoration(filled: true, labelText: 'Name'),
              ),
              TextFormField(
                controller: _descriptionController,
                decoration: const InputDecoration(
                    filled: true, labelText: 'Description'),
              ),
              ElevatedButton(
                onPressed: _saveProduct,
                child: const Text('Save'),
              )
            ],
          ),
        ),
      ),
    );
  }
}