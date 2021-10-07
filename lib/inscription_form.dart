import 'package:flutter/material.dart';

class InscriptionForm extends StatelessWidget {
   final String _image;


   InscriptionForm(this._image);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.topCenter,
      margin: const  EdgeInsets.fromLTRB(20,5,20,20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Image.asset(_image,width:500,height:200 ),

           TextFormField(

             decoration: InputDecoration(
               labelText: "UserName",
               fillColor: Colors.white,
               focusedBorder:OutlineInputBorder(
                 borderSide: const BorderSide(color: Colors.grey, width: 2.0),
                 borderRadius: BorderRadius.circular(10.0),
               ), border: OutlineInputBorder(
               borderRadius: BorderRadius.circular(8),
               borderSide: BorderSide(
                 width: 4,
                 style: BorderStyle.solid,
               ),
           )
           )
           ),

          TextFormField(

              decoration: InputDecoration(
                  labelText: "Email",
                  fillColor: Colors.white,
                  focusedBorder:OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.grey, width: 2.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ), border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                  width: 4,
                  style: BorderStyle.solid,
                ),
              )
              )
          ),
          TextFormField(

              decoration: InputDecoration(
                  labelText: "Mot de passe",
                  fillColor: Colors.white,
                  focusedBorder:OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.grey, width: 2.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ), border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                  width: 4,
                  style: BorderStyle.solid,
                ),
              )
              )
          ),

          TextFormField(

              decoration: InputDecoration(
                  labelText: "Année de naissance",
                  fillColor: Colors.white,
                  focusedBorder:OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.grey, width: 2.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ), border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                  width: 4,
                  style: BorderStyle.solid,
                ),
              )
              )
          ),

          TextFormField(

              decoration: InputDecoration(
                  labelText: "Adresse de facturation",
                  fillColor: Colors.white,
                  focusedBorder:OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.grey, width: 2.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ), border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                  width: 4,
                  style: BorderStyle.solid,
                ),
              )
              )
          ),
Container(
    alignment: AlignmentDirectional.center,

    margin: const  EdgeInsets.fromLTRB(40,40,45,40),
  child:
    Row(

      verticalDirection: VerticalDirection.down,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ElevatedButton(onPressed: () {
          print("pressed");
        }, child: Text("S'inscrire"),),
        const SizedBox(
          width: 20,

        ),
        ElevatedButton(onPressed: () {
          print("pressed");
        }, child: Text("Annuler"),)


      ],


    )
)




        ],



      ),

    );
  }


}


