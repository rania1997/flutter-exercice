import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bibliotheque extends StatelessWidget {
  const Bibliotheque({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Ma bibliothèque"),
        ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        children: [
          Card(
            elevation: 5,
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Image.asset("assets/images/dmc5.jpg",width: 140,  ),
                    SizedBox(height: 8,),
                    Text("Devil Man Cry 5", style: TextStyle(fontSize: 18),)
                  ],
                ),
              )),
          Card(
            elevation: 5,
            child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Image.asset("assets/images/re8.jpg"  ,width: 140, ),
                    SizedBox(height: 8,),
                    Text("Resident Evil VIII", style: TextStyle(fontSize: 18),)
                  ],
                )),
          ),
          Card(
            elevation: 5,
            child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Image.asset("assets/images/nfs.jpg" ,width: 140,  ),
                    SizedBox(height: 8,),
                    Text("Need For Speed Heat", style: TextStyle(fontSize: 16),)
                  ],
                )),
          ),

        ],
      )



    );
  }
}
