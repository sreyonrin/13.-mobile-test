import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(Myday());

class Myday extends StatefulWidget {
  @override
  _MydayState createState() => _MydayState();
}

class _MydayState extends State<Myday> {

  Container weddingBox(String img1,String img2 ){
    return Container(
              margin: EdgeInsets.only(top:10.0 ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Image.network(
                    img1,
                      
                      fit: BoxFit.cover,
                      width: 200.0,
                      
                      ),
                  Image.network(
                      img2,
                      fit: BoxFit.cover,
                      width: 200.0,
                      
                      ),
                ],
              ),
            );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("My day Shop",style: TextStyle(fontFamily: "ladyshop" ),),
          backgroundColor: Colors.pink,
          actions: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 20.0),
              child: Icon(Icons.shopping_cart),
            ),
            Container(
              margin: EdgeInsets.only(right: 20.0),
              child: Icon(Icons.search),
            ),
         
          ],
        ),
        body: ListView(
          children: <Widget>[
            Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCSywezLJV8KNwuNSJ3hRGk_zc7gykuYKTYUm4CzNiunrU6wjQ2w&s"),
              
              weddingBox("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCSywezLJV8KNwuNSJ3hRGk_zc7gykuYKTYUm4CzNiunrU6wjQ2w&s",
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCSywezLJV8KNwuNSJ3hRGk_zc7gykuYKTYUm4CzNiunrU6wjQ2w&s",
              ),
            
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                child: Center(
                  child: CircleAvatar(
                    radius: 60.0,
                    backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8Wi2DXtzKYxFyngMs7NpNKlObeCEeEXAtRUYXZCwl_GOMBP38&s",
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKsRSmqcKfcTf-3i7MvJAX849i_DcKntgCbwhldaC6DdC-2v8sBw&s",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              ListTile(
                title: Text("096 678 888"),
                subtitle: Text("Smart"),
                leading: Icon(Icons.phone),
              ),
              ListTile(
                title: Text("bopha@gmail.com"),
                subtitle: Text("Google Map"),
                leading: Icon(Icons.email),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
