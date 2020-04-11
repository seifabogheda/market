import 'package:flutter/material.dart';
import '../Pages/product_detials.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Blazer",
      "pic": "images/products/blazer1.jpeg",
      "old_price": 120,
      "price": 85
    },
    {
      "name": "Red Dress",
      "pic": "images/products/dress1.jpeg",
      "old_price": 144,
      "price": 110
    },
    {
      "name": "Blazer",
      "pic": "images/products/blazer2.jpeg",
      "old_price": 120,
      "price": 85
    },
    {
      "name": "Black Dress",
      "pic": "images/products/dress2.jpeg",
      "old_price": 200,
      "price": 150
    },
    {
      "name": "hills",
      "pic": "images/products/hills1.jpeg",
      "old_price": 90,
      "price": 65
    },
    {
      "name": "Red Hills",
      "pic": "images/products/hills2.jpeg",
      "old_price": 120,
      "price": 90
    },
    {
      "name": "Pants",
      "pic": "images/products/pants1.jpg",
      "old_price": 120,
      "price": 85
    },
    {
      "name": "pants",
      "pic": "images/products/pants2.jpeg",
      "old_price": 120,
      "price": 85
    },
    {
      "name": "Skirt",
      "pic": "images/products/skt2.jpeg",
      "old_price": 120,
      "price": 85
    },
    {
      "name": "Skirt",
      "pic": "images/products/skt1.jpeg",
      "old_price": 120,
      "price": 85
    },
    {
      "name": "Shoes",
      "pic": "images/products/shoe1.jpg",
      "old_price": 120,
      "price": 85
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_prod(
            prod_name: product_list[index]['name'],
            prod_pic: product_list[index]['pic'],
            prod_oPrice: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_pic;
  final prod_oPrice;
  final prod_price;
  Single_prod(
      {this.prod_name, this.prod_pic, this.prod_oPrice, this.prod_price});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: Text('hero1'),
        child: InkWell(
          onTap: () => Navigator.of(context).push(new MaterialPageRoute(
              builder: (context) => new ProductDetials(
                //passing values of the products to products Detials..
                prod_det_name: prod_name,prod_det_new_pirce: prod_price, prod_det_old_price: prod_oPrice,prod_det_pic: prod_pic,
              ))),
          child: GridTile(
            footer: Container(
              height: 60,
              color: Colors.grey.withOpacity(0.4),
              child: ListTile(
                leading: Text(
                  prod_name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                title: Text(
                  "\$$prod_price",
                  style:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.w700),
                ),
                subtitle: Text(
                  "\$$prod_oPrice",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      decoration: TextDecoration.lineThrough),
                ),
              ),
            ),
            child: Image.asset(
              prod_pic,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
