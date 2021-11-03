import 'package:flutter/material.dart';

class ElementInfo extends StatelessWidget {
  final String _id;
  final String _image;
  final int _price;

  ElementInfo(this._id,this._image, this._price);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(Icons.restore_from_trash_rounded, size: 50,),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Image.asset(_image, width: 155, height: 58),
            ),
            Text(_price.toString() + " TND", textScaleFactor: 2,),
          ],
        ),
      ),
    );
  }
}

class LocalBasket{
  final String id;
  final String image;
  final int price;

  LocalBasket(this.id, this.image, this.price);

  @override
  String toString() {
    return 'LocalBasket{id: $id, image: $image, price: $price}';
  }
}