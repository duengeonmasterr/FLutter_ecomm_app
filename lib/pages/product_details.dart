import 'package:flutter/material.dart';
import 'home.dart';
import 'package:ecomm/pages/cart.dart';



class ProductDetails extends StatefulWidget {
  final productdetails_name;
  final productdetails_price;
  final productdetails_oldprice;
  final productdetails_picture;

  ProductDetails({
    this.productdetails_name,
    this.productdetails_price,
    this.productdetails_oldprice,
    this.productdetails_picture,
  });

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: InkWell(
          onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>new HomePage()));},
          child:Text("GRocery app")
        ),
        actions: <Widget>[
          new IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          new IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(context,MaterialPageRoute(builder: (context)=>new Cart()));
            },
          ),
        ],
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.productdetails_picture),
              ),
              footer: new Container(
                  color: Colors.white70,
                  child: ListTile(
                    leading: new Text(
                      widget.productdetails_name,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.0),
                    ),
                    title: new Row(
                      children: <Widget>[
                        Expanded(
                          child: new Text(
                            "\$${widget.productdetails_oldprice}",
                            style: TextStyle(
                                color: Colors.grey,
                                decoration: TextDecoration.lineThrough),
                          ),
                        ),
                        Expanded(
                          child: new Text(
                            "\$${widget.productdetails_price}",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.red),
                          ),
                        )
                      ],
                    ),
                  )),
            ),
          ),

      // =====================the first button ============================

          Row(
            children: <Widget>[
             
          // =====================the quantity button =============================

              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: new Text("Size"),
                            content: new Text("Choose the Quantity"),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: new Text("close"),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("Qty"),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          // =====================the second button ============================

          Row(
            children: <Widget>[
          // =====================the Buy now button =============================

              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.red,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: new Text("Buy now"),
                ),
              ),
              new IconButton(
                icon: Icon(Icons.add_shopping_cart),
                color: Colors.red,
                onPressed: () {},
              ),
              new IconButton(
                icon: Icon(Icons.favorite_border),
                color: Colors.red,
                onPressed: () {},
              ),
            ],
          ),

          Divider(),
          new ListTile(
            title: new Text("Product Details"),
            subtitle: new Text(
                "lorem loremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremlorem"),
          ),
          Divider(),
          Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0,5.0,5.0,5.0),
              child: new Text("Product name",style:TextStyle(color:Colors.grey,),),),
              Padding(padding: EdgeInsets.all(5.0),
              child: new Text(widget.productdetails_name) ,)
            ],
          ),
           Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0,5.0,5.0,5.0),
              child: new Text("Product Brand",style:TextStyle(color:Colors.grey,),),),
               Padding(padding: EdgeInsets.all(5.0),
              child: new Text("brand ") ,)
            ],
          ),
           Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0,5.0,5.0,5.0),
              child: new Text("Product Condition",style:TextStyle(color:Colors.grey,),),),
              Padding(padding: EdgeInsets.all(5.0),
              child: new Text("new") ,)
            ],
          ),
       Divider(),
       Text("Similar Products"),
       Container(
         height:360.0,
         child:similar_products(),
         
       )
       
       
        ],
      ),
    );
  }
}
//==========similar products====================
class similar_products extends StatefulWidget {
 

  _similar_productsState createState() => _similar_productsState();
}

class _similar_productsState extends State<similar_products> {
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
      "name": "Strawberry",
      "picture": "images/products/Strawberry.png",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "papaya",
      "picture": "images/products/papaya.png",
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
          return Similar_single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}


class Similar_single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Similar_single_prod({
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
