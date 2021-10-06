import 'package:flutter/material.dart';

class ProductBloc extends StatelessWidget {
  final String _image;
  final String _title;
  const ProductBloc(this._image, this._title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(10, 10, 20, 10),
            child: Image.asset(_image, width: 200, height: 94),
          ),
          Row(

            children: [
              Text(_title, textScaleFactor: 2),
              const SizedBox(
                height: 10,
              ),

            ],
          )
        ],
      ),
    );
  }
}
