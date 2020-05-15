import 'package:flutter/material.dart';
import 'package:ecomm/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Mango",
      "picture": "images/products/mango.png",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Avocado",
      "picture": "images/products/avocado.png",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "tomatoes",
      "picture": "images/products/download.png",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "papaya",
      "picture": "images/products/papaya.png",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "kiwi",
      "picture": "images/products/kiwi.png",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "apples",
      "picture": "images/products/apple.png",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "orange",
      "picture": "images/products/orange.png",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "banana",
      "picture": "images/products/banana.png",
      "old_price": 120,
      "price": 85,
    },
    
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  single_prod({
    this.prod_name,
    this.prod_old_price,
    this.prod_picture,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Hero(
        tag: new Text("hero1"),
        child: Material(
        child: InkWell(
          onTap: () => Navigator.of(context).push(new MaterialPageRoute(
              //here we are passing details to product details
              builder: (context) => new ProductDetails(
                    productdetails_name: prod_name,
                    productdetails_price: prod_price,
                    productdetails_oldprice: prod_old_price,
                    productdetails_picture: prod_picture,
                  ))),
          child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: new Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(prod_name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),)
                    ),
                     Text("\$${prod_price}",style:TextStyle(color:Colors.red,fontWeight:FontWeight.bold))

                  ],
                ),
              ),
              child: Image.asset(
                prod_picture,
                fit: BoxFit.cover,
              )),
        ),
      ),
    ));
  }
}
