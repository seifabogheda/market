import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Pages/Carts.dart';

class ProductDetials extends StatefulWidget {
  final prod_det_name;
  final prod_det_new_pirce;
  final prod_det_old_price;
  final prod_det_pic;
  ProductDetials(
      {this.prod_det_name,
      this.prod_det_new_pirce,
      this.prod_det_old_price,
      this.prod_det_pic});
  @override
  _ProductDetialsState createState() => _ProductDetialsState();
}

class _ProductDetialsState extends State<ProductDetials> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.black,
        title: Text(
          'Shopping',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontStyle: FontStyle.italic),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search, color: Colors.white), onPressed: () {}),
          IconButton(
              icon: Icon(Icons.add_shopping_cart, color: Colors.white),
              onPressed: () {}),
        ],
      ),
      body: ListView(children: <Widget>[
        Container(
          height: 250,
          child: GridTile(
            child: Container(
              child: Image.asset(widget.prod_det_pic),
            ),
            footer: Container(
              color: Colors.white70,
              child: ListTile(
                leading: Text(
                  widget.prod_det_name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                title: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          "${widget.prod_det_new_pirce}",
                          style: TextStyle(color: Colors.red),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "New Price",
                          style: TextStyle(color: Colors.red),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          "${widget.prod_det_old_price}",
                          style: TextStyle(
                              color: Colors.black,
                              decoration: TextDecoration.lineThrough),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Old Price",
                          style: TextStyle(
                              color: Colors.black,
                              decoration: TextDecoration.lineThrough),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Row(
          // Size Button
          children: <Widget>[
            Expanded(
              child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return new AlertDialog(
                          title: Text('Size'),
                          content: Text('Choose The Size'),
                          actions: <Widget>[
                            MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                              child: Text('Close'),
                            )
                          ],
                        );
                      });
                },
                color: Colors.white70,
                textColor: Colors.grey,
                child: Row(
                  children: <Widget>[
                    Expanded(child: Text('Size')),
                    Expanded(child: Icon(Icons.arrow_drop_down))
                  ],
                ),
              ),
            ),
            //Color Button..
            Expanded(
              child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return new AlertDialog(
                          title: Text('Color'),
                          content: Text('Choose The Color'),
                          actions: <Widget>[
                            MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                              child: Text('Close'),
                            )
                          ],
                        );
                      });
                },
                color: Colors.white70,
                textColor: Colors.grey,
                child: Row(
                  children: <Widget>[
                    Expanded(child: Text('Color0')),
                    Expanded(child: Icon(Icons.arrow_drop_down)),
                  ],
                ),
              ),
            ),
            //Quality button
            Expanded(
              child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return new AlertDialog(
                          title: Text('Quality'),
                          content: Text('Choose The Quality'),
                          actions: <Widget>[
                            MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                              child: Text('Close'),
                            )
                          ],
                        );
                      });
                },
                color: Colors.white70,
                textColor: Colors.grey,
                child: Row(
                  children: <Widget>[
                    Expanded(child: Text('Quality')),
                    Expanded(child: Icon(Icons.arrow_drop_down)),
                  ],
                ),
              ),
            ),
          ],
        ),
        //===== Buy Now Button ======
        Row(
          children: <Widget>[
            Expanded(
              child: MaterialButton(
                onPressed: () {},
                color: Colors.black,
                textColor: Colors.white,
                elevation: 0.2,
                child: Text('Buy Now'),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.add_shopping_cart),
              color: Colors.black,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite_border),
              color: Colors.black,
            ),
          ],
        ),
        Divider(),
        ListTile(
          title: Text('Product Detials'),
          subtitle: Text(
              "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,"
              " and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
        ),
        // Similar Section ..
        Divider(),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text('Similar Products'),
        ),
        Container(
          height: 200,
          child: Similar_Products(),
        ),
      ]),
    );
  }
}

class Similar_Products extends StatefulWidget {
  @override
  _Similar_ProductsState createState() => _Similar_ProductsState();
}

class _Similar_ProductsState extends State<Similar_Products> {
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
                    prod_det_name: prod_name, prod_det_new_pirce: prod_price,
                    prod_det_old_price: prod_oPrice, prod_det_pic: prod_pic,
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
