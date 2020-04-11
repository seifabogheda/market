import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var Products_on_the_cart = [
    {
      "name": "Blazer",
      "pic": "images/products/blazer1.jpeg",
      "price": 85,
      "size": 'M',
      "color": 'Black',
      'quantity': 1
    },
    {
      "name": "Red Dress",
      "pic": "images/products/dress1.jpeg",
      "price": 110,
      "size": 'M',
      "color": 'Black',
      'quantity': 1
    },
    {
      "name": "Blazer",
      "pic": "images/products/blazer2.jpeg",
      "price": 85,
      "size": 'M',
      "color": 'Black',
      'quantity': 1
    },
    {
      "name": "Black Dress",
      "pic": "images/products/dress2.jpeg",
      "price": 150,
      "size": 'XL',
      "color": 'Black',
      'quantity': 1
    },
    {
      "name": "hills",
      "pic": "images/products/hills1.jpeg",
      "price": 65,
      "size": 30,
      "color": 'Black',
      'quantity': 1
    },
    {
      "name": "Red Hills",
      "pic": "images/products/hills2.jpeg",
      "price": 90,
      "size": 30,
      "color": 'Red',
      'quantity': 1
    },
    {
      "name": "Pants",
      "pic": "images/products/pants1.jpg",
      "price": 85,
      "size": 'l',
      "color": 'Brown',
      'quantity': 1
    },
    {
      "name": "pants",
      "pic": "images/products/pants2.jpeg",
      "price": 85,
      "size": 'M',
      "color": 'Black',
      'quantity': 1
    },
    {
      "name": "Skirt",
      "pic": "images/products/skt2.jpeg",
      "price": 85,
      "size": 'M',
      "color": 'Blue',
      'quantity': 1
    },
    {
      "name": "Skirt",
      "pic": "images/products/skt1.jpeg",
      "price": 85,
      "size": 'M',
      "color": 'White',
      'quantity': 1
    },
    {
      "name": "Shoes",
      "pic": "images/products/shoe1.jpg",
      "price": 85,
      "size": 41,
      "color": 'Red',
      'quantity': 1
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: Products_on_the_cart.length,
        itemBuilder: (context, index) {
          return Single_cart_product(
            cart_prod_name: Products_on_the_cart[index]['name'],
            cart_prod_color: Products_on_the_cart[index]['color'],
            cart_prod_gty: Products_on_the_cart[index]['quantity'],
            cart_prod_size: Products_on_the_cart[index]['size'],
            cart_prod_pic: Products_on_the_cart[index]['pic'],
            cart_prod_price: Products_on_the_cart[index]['price'],
          );
        });
  }
}

class Single_cart_product extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_pic;
  final cart_prod_size;
  final cart_prod_price;
  final cart_prod_color;
  final cart_prod_gty;
  Single_cart_product(
      {this.cart_prod_name,
      this.cart_prod_color,
      this.cart_prod_gty,
      this.cart_prod_pic,
      this.cart_prod_price,
      this.cart_prod_size});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(
          cart_prod_pic,
          width: 80,
        ),
        title: Text(cart_prod_name),
        subtitle: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Text(
                    'Size:',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    '${cart_prod_size}',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 8, 8, 8),
                  child: Text(
                    'Color:',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    cart_prod_color,
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ],
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                '\$${cart_prod_price}',
                style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
