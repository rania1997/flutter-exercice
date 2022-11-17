import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  final String _image;
  final String _title;
  final String _description;
  final int _price;

  const ProductDetails(
      this._image, this._title, this._description, this._price, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: Image.asset(_image, width: 460, height: 215)
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(20, 0, 20, 50),
            child: Text(_description),
          ),
          Text(_price.toString() + " TND", textScaleFactor: 3),
          const SizedBox(
            height: 50,
          ),
          SizedBox(
            width: 200,
            height: 50,
            child: ElevatedButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.shopping_basket_rounded),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Acheter", textScaleFactor: 2)
                ],
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
