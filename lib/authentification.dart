import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Authentification extends StatelessWidget {
  const Authentification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("S'authentifier"),
        ),
        body: SingleChildScrollView( child :Column(
          children: [
            Container(
                width: double.infinity,
                margin: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                child: Image.asset("assets/images/minecraft.jpg", width: 460, height: 215)
            ),
            SizedBox(height: 60,),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: const TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Username"),
              ),
            ),

            Container(
              margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: const TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Mot De Passe"),
              ),
            ),

            

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width:370 ,
                  child: ElevatedButton(
                    child: const Text("S'authentifier"),
                    onPressed: () {},
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  width: 370,
                  child: ElevatedButton(
                    child: Text('Annuler'),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                    )
                )),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text("Mot de passe oublié?"),
                    ),
                    Container(
                      child: Text(" Cliquez ici?" , style: TextStyle(color: Colors.blue)),
                    ),
                  ],
                ),

              ],
            )
          ],
        ), )
    );
  }
}
