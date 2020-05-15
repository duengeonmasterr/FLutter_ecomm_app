import 'package:flutter/material.dart';


class HorizontalList extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child:ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
           Category(
              image_location:'images/cats/kiwi.jpg',
              image_caption:'Fruits',
           ),
            
             Category(
              image_location:'images/cats/be.jpg',
              image_caption:'Cosmetics',
           ),
             Category(
              image_location:'images/cats/bev.jpg',
              image_caption:'Bevrages',
           ),
            
             Category(
              image_location:'images/cats/eggs.jpg',
              image_caption:'Sweets',
           ),
            
           Category(
              image_location:'images/cats/veg.jpg',
              image_caption:'Vegetables',
           ),
            
        ],
      ) ,
     
    );
  }
}


class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

    Category({
      this.image_location,
      this.image_caption,

    });
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
    child: InkWell(
      onTap:(){},
    child: Container(
      width: 100.0,
      child: ListTile(
        
        title: Image.asset(
          image_location,
          width:100.0,
          height:80.0,),
      
      
        subtitle: Container(
          alignment: Alignment.topCenter,
          child: Text(image_caption,style: new TextStyle(fontSize: 12.0),),
        ),
      ),
    ),),
     
    );
  }
}