import 'package:flutter/material.dart';

void main() {
  runApp(FoodOrderingApp());
}

class FoodOrderingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Ordering',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FoodOrderingPage(),
    );
  }
}
class FoodOrderingPage extends StatefulWidget {
  @override
  _FoodOrderingPageState createState() => _FoodOrderingPageState();
}

class _FoodOrderingPageState extends State<FoodOrderingPage> {
  List<FoodItem> _cartItems = [];

  void _addToCart(FoodItem foodItem) {
    setState(() {
      _cartItems.add(foodItem);
    });
  }

  void _removeFromCart(FoodItem foodItem) {
    setState(() {
      _cartItems.remove(foodItem);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Food Ordering Page'),
      ),

      body: ListView.builder(

        itemCount: foodItems.length,
        itemBuilder: (context, index) {
          final foodItem = foodItems[index];
          final isInCart = _cartItems.contains(foodItem);

          return ListTile(
            title: Text(foodItem.name),
            subtitle: Text('\$${foodItem.price.toStringAsFixed(2)}'),
            trailing: IconButton(
              icon: isInCart ? Icon(Icons.remove_shopping_cart) : Icon(Icons.add_shopping_cart),
              onPressed: () {
                if (isInCart) {
                  _removeFromCart(foodItem);
                } else {
                  _addToCart(foodItem);
                }
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Implement a function to navigate to the cart page
          // For now, let's print the selected items to the console
          print(_cartItems);
        },
        label: Text('View Cart (${_cartItems.length})'),
        icon: Icon(Icons.shopping_cart),
      ),
    );
  }
}

class FoodItem {
  final String name;
  final double price;

  FoodItem(this.name, this.price);
}

List<FoodItem> foodItems = [
  FoodItem('Pizza', 12.99),
  FoodItem('Burger', 8.49),
  FoodItem('Salad', 7.99),
  FoodItem('Pasta', 9.99),
  // Add more food items here
];