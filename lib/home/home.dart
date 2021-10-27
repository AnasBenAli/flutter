import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'product_info.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Product> _products = [];
  final String _baseUrl = "10.0.2.2:9090";

  final String _des = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, "
      "sed do eiusmod tempor incididunt ut "
      "labore et dolore magna aliqua. Ut enim ad minim veniam, "
      "quis nostrud exercitation ullamco laboris nisi ut "
      "aliquip ex ea commodo consequat. Duis aute irure dolor "
      "in reprehenderit in voluptate velit esse cillum dolore "
      "eu fugiat nulla pariatur. Excepteur sint occaecat "
      "cupidatat non proident, sunt in culpa qui officia "
      "deserunt mollit anim id est laborum.";

  @override
  void initState() {
    http.get(Uri.http(_baseUrl, "/game")).then((http.Response Response) {
      List<dynamic> gamesFromServer = json.decode(Response.body);
          for(int i =0; i<gamesFromServer.length;i++)
            {
              _products.add(Product(gamesFromServer[i]["_id"],
                  gamesFromServer[i]["image"],
                  gamesFromServer[i]["title"],
                  gamesFromServer[i]["description"],
                  int.parse(gamesFromServer[i]["price"]),
                  int.parse(gamesFromServer[i]["price"])
              ));
            }
          setState(() {

          });
    });
   /* _products.add(Product("id","assets/images/dmc5.jpg", "Devil May Cry 5", _des, 200, 3000));
    _products.add(Product("id","assets/images/re8.jpg", "Resident Evil VIII", _des, 200, 3000));
    _products.add(Product("id","assets/images/nfs.jpg", "Need For Speed Heat", _des, 100, 3000));
    _products.add(Product("id","assets/images/rdr2.jpg", "Red Dead Redemption II", _des, 150, 3000));
    _products.add(Product("id","assets/images/fifa.jpg", "FIFA 22", _des, 100, 3000));
    _products.add(Product("id","assets/images/minecraft.jpg", "Minecraft", _des, 100, 3000));*/
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _products.length,
      itemBuilder: (BuildContext context,int index) {
        return ProductInfo(_products[index].image, _products[index].title, _products[index].description,
            _products[index].price, _products[index].quantity);
      },
    );
  }
}