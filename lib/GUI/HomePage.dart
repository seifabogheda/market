import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:training1/Pages/Carts.dart';
// my own imports
import './horizontal_listView.dart';
import './Products.dart';
import '../Pages/Carts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget imgCarouse = new Container(
      height: 280.0,
      width: 350.0,
      child: Carousel(
        images: [
          AssetImage('images/c1.jpg'),
          AssetImage('images/m1.jpeg'),
          AssetImage('images/m2.jpg'),
          AssetImage('images/w1.jpeg'),
          AssetImage('images/w3.jpeg'),
          AssetImage('images/w4.jpeg'),
        ],
        dotSize: 5.0,
        dotSpacing: 15.0,
        dotColor: Colors.grey,
        indicatorBgPadding: 4.0,
        dotBgColor: Colors.black.withOpacity(0.5),
        borderRadius: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 700),
      ));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Shopping',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontStyle: FontStyle.italic),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search, color: Colors.white), onPressed: null),
          IconButton(
              icon: Icon(Icons.shopping_cart, color: Colors.white),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Carts()));
              }),
        ],
      ),
      //Drawer
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            //header
            new UserAccountsDrawerHeader(
              accountName: Text('Seif Abogheda'),
              accountEmail: Text('Seif.gheda@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.black,
              ),
            ),
            //body
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text(
                  'HomePage',
                  style: TextStyle(color: Colors.black),
                ),
                leading: Icon(
                  Icons.home,
                  color: Colors.black,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text(
                  'My Account',
                  style: TextStyle(color: Colors.black),
                ),
                leading: Icon(
                  Icons.person,
                  color: Colors.black,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text(
                  'My Order',
                  style: TextStyle(color: Colors.black),
                ),
                leading: Icon(
                  Icons.shopping_basket,
                  color: Colors.black,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Carts()));
              },
              child: ListTile(
                title: Text(
                  'Shopping Cart',
                  style: TextStyle(color: Colors.black),
                ),
                leading: Icon(
                  Icons.shopping_cart,
                  color: Colors.black,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text(
                  'Favourites',
                  style: TextStyle(color: Colors.black),
                ),
                leading: Icon(
                  Icons.favorite,
                  color: Colors.black,
                ),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text(
                  'Settings',
                  style: TextStyle(color: Colors.black),
                ),
                leading: Icon(
                  Icons.settings,
                  color: Colors.black,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text(
                  'About',
                  style: TextStyle(color: Colors.black),
                ),
                leading: Icon(
                  Icons.help,
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          //ImageCarouse
          imgCarouse,
          //Padding
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'Categories',
              style: TextStyle(fontSize: 15),
            ),
          ),
          //Horizantal list view
          Horizantal_listView(),
          //Padding to next
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text(
              'Recent Products',
              style: TextStyle(fontSize: 15),
            ),
          ),
          Container(
            height: 200,
            child: Products(),
          )
        ],
      ),
    );
  }
}
