import 'package:flutter/material.dart';
// my Imports..
import '../GUI/cart_products.dart';
class Carts extends StatefulWidget {
  @override
  _CartsState createState() => _CartsState();
}

class _CartsState extends State<Carts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text(
          'Cart',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontStyle: FontStyle.italic),
        ),
        actions: <Widget>[
          Icon(Icons.search)
        ],
      ),
      body: Cart_products(),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(child: ListTile(
              title: Text('Total'),
              subtitle: Text('\$230'),
            ),),
            Expanded(child: MaterialButton(onPressed: (){},
              child:Text('Check Out',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
              color: Colors.black,
            ),
            ),
          ],
        ),
      ),
    );
  }
}
