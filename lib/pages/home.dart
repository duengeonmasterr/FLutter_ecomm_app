import 'package:ecomm/pages/address.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

// own imports
import 'package:ecomm/components/horizontal_listview.dart';
import 'package:ecomm/components/Products.dart';
import 'package:ecomm/pages/cart.dart';
import 'package:ecomm/pages/splash_screen.dart';
import 'package:ecomm/main.dart';
import 'package:dynamic_theme/dynamic_theme.dart';

//import 'package:ecomm/pages/login.dart';






class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/c1.jpg'),
          AssetImage('images/brand_f.jpg'),
          AssetImage('images/veg.jpg'),
          AssetImage('images/groceries.jpg'),
          AssetImage('images/grthre.jpg'),
          AssetImage('images/grtwo.jpg'),
        ],
        autoplay: true,
           animationCurve: Curves.fastLinearToSlowEaseIn,
           animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        dotColor: Colors.white,
        dotBgColor: Colors.transparent,
        indicatorBgPadding: 2.0,
      ),
    );

    return Scaffold(
        
        
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: Text("GRocery App"),
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
              Navigator.push(context,MaterialPageRoute(builder: (context)=>new Cart()) );
            },
          ),
           Switch(value: isSwitched,onChanged:(val){
           changeBrightness();
           setState(() {
             isSwitched = val;
           });
         } ,)
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            //header
            new UserAccountsDrawerHeader(
              accountEmail: Text("asd@gmail.com"),
              accountName: Text("asd"),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                ),
              ),
              decoration: new BoxDecoration(color: Colors.red),
            ),

            InkWell(
              onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context)=>new HomePage()));
              },
              child: ListTile(
                title: Text("Home"),
                leading: Icon(
                  Icons.home,
                  color: Colors.red,
                ),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("My Account"),
                leading: Icon(
                  Icons.person,
                  color: Colors.red,
                ),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("My orders"),
                leading: Icon(
                  Icons.shopping_basket,
                  color: Colors.red,
                ),
              ),
            ),

            InkWell(
              onTap: () {
                 Navigator.push(context,MaterialPageRoute(builder: (context)=>new Cart()) );
              },
              child: ListTile(
                title: Text("Cart"),
                leading: Icon(
                  Icons.shopping_cart,
                  color: Colors.red,
                ),
              ),
            ),

            InkWell(
              onTap: () {
                 Navigator.push(context,MaterialPageRoute(builder: (context)=> MyMap()) );
              },
              child: ListTile(
                title: Text("Address"),
                leading: Icon(
                  Icons.gps_fixed,
                  color: Colors.red,
                ),
              ),
            ),

            Divider(),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Settings"),
                leading: Icon(
                  Icons.settings,
                  color: Colors.grey,
                ),
              ),
            ),

            InkWell(
              onTap: () {Navigator.push(context,MaterialPageRoute(builder: (context)=> HomePage()) );},
              child: ListTile(
                title: Text("About"),
                leading: Icon(
                  Icons.help,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
      body: new Column(
        children: <Widget>[
          //image caousel begins here
          
          image_carousel,
          //padding widget
          new Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              
              alignment: Alignment.centerLeft,
              child: new Text('Categories')),
          ),

          //Horizontal list view
          HorizontalList(),

          new Padding(
            padding: const EdgeInsets.all(10.0),

            child: Container(
              alignment: Alignment.centerLeft,
              child: new Text('Recent Products')),
          ),

          //grid view
          Flexible(
           child: Products(),
          )
        ],
      ),
    );
  }
  void changeBrightness() {
    DynamicTheme.of(context).setBrightness(Theme.of(context).brightness == Brightness.dark? Brightness.light: Brightness.dark);
  }
}
