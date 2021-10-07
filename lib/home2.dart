import 'package:flutter/material.dart';

class login extends StatelessWidget {
  const login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(

    title: const Text("S'authentifier"),





    ),
body: ListView(

        children: [
Container(
      margin: const EdgeInsets.fromLTRB(20,30,20 ,10 ) ,

        child: Image.asset('assets/images/minecraft.jpg'),


    ),

          SizedBox(
            height: 70,
          ),
          Container(
             margin: const EdgeInsets.fromLTRB(10, 0, 10,10),
            child: const TextField(decoration: InputDecoration(
              border: OutlineInputBorder(),labelText: "Username"
            ),),

          ),

          Container(
            margin: const EdgeInsets.fromLTRB(10, 0, 10,10),
            child: const TextField(decoration: InputDecoration(
                border: OutlineInputBorder(),labelText: "Mot de passe"
            ),),

          ),
          SizedBox(
            height: 20,
          ),

        Container(

child: Column(
 mainAxisAlignment: MainAxisAlignment.center,
  children: [

    ElevatedButton(onPressed: () {
      print("pressed");
    }, child: Text("S'authentifier"),style: ElevatedButton.styleFrom(
      primary: Colors.blue,
      padding: const EdgeInsets.symmetric(horizontal: 145, ),


    ),),

    ElevatedButton(onPressed: () {
      print("pressed");
    }, child: Text("Créer un compte"),style: ElevatedButton.styleFrom(
      primary: Colors.red,
      padding: const EdgeInsets.symmetric(horizontal: 135, ),


    ),),


  ],

),

        ),
SizedBox(

  height: 20,

),
          Container(

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Mot de passe oublier ?"),

                FlatButton(onPressed: () {
                  print("pressed");
                },child: Text("Cliquez ici"),textColor: Colors.blue,



                ),
                
                
              ],


            ),

          )

      ],


    ),

    );
  }
}
