import 'package:flutter/material.dart';



class Cart_products extends StatefulWidget {
  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
 
 var product_on_cart=[
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
      "name": "papaya",
      "picture": "images/products/papaya.png",
      "old_price": 120,
      "price": 85,
    },
    
 ];
 
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: product_on_cart.length,
      itemBuilder: (context,index){
        return Single_cart_products(
          cart_prod_name: product_on_cart[index]["name"],
          
          cart_prod_quantity: product_on_cart[index]["quantity"],
          
          cart_prod_picture: product_on_cart[index]["picture"],
          cart_prod_price: product_on_cart[index]["price"],
        );
      },
    );
  }
}


class Single_cart_products extends StatelessWidget {
  
  final cart_prod_name;
  final cart_prod_picture;
  
  final cart_prod_price;
  
  final cart_prod_quantity;
  
Single_cart_products({
  this.cart_prod_name,
  this.cart_prod_picture,
  this.cart_prod_price,
 
  this.cart_prod_quantity,
 
});


  @override
  Widget build(BuildContext context) {
    
    return Card(
      
      shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
      child: ListTile(
       
        //============leading==============
        leading: new Image.asset(cart_prod_picture,width: 80.0,height: 150.0,),
        //================title=============
        title: new Text(cart_prod_name),
        //===========subtitle=============
        subtitle: new Column(
          
          children: <Widget>[
            Row(
              
              children: <Widget>[
               
               
                
              ],
            ),
         new Container(
              alignment: Alignment.topLeft,
              child: new Text("\$${cart_prod_price}",
              style: 
              TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
                color: Colors.red),),
            ),
          ], ),
        
        trailing: Column(
          
          children: <Widget>[
            
          

          ],
        ),
      ),
      
    );
  }
}

