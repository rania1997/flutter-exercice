import 'package:flutter/material.dart';

class ProductInfo extends StatelessWidget {
  final String _image;
  final String _title;
  final int _price;

  const ProductInfo(this._image, this._title, this._price, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(10, 10, 20, 10),
            child: Image.asset(_image, width: 200, height: 94),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(_title),
              const SizedBox(
                height: 10,
              ),
              Text("$_price TND", textScaleFactor: 2)
            ],
          )
        ],
      ),
    );
  }
}
