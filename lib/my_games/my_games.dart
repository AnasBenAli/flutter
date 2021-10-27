import 'package:flutter/material.dart';

import 'my_game_info.dart';
import 'package:workshop_gamix2122/home/product_info.dart';

class MyGames extends StatefulWidget {
  const MyGames({Key? key}) : super(key: key);

  @override
  State<MyGames> createState() => _MyGamesState();
}

class _MyGamesState extends State<MyGames> {
  final List<Product> _products = [];

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
    _products.add(Product("id","assets/images/dmc5.jpg", "Devil May Cry 5", _des, 200, 3000));
    _products.add(Product("id","assets/images/re8.jpg", "Resident Evil VIII", _des, 200, 3000));
    _products.add(Product("id","assets/images/nfs.jpg", "Need For Speed Heat", _des, 100, 3000));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: _products.length,
      itemBuilder: (BuildContext context, int index) {
        return MyGameInfo(_products[index].image, _products[index].title);
      },
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          mainAxisExtent: 130
      ),
    );
  }
}
