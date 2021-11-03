import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import 'element_info.dart';

class Basket extends StatefulWidget {
  const Basket({Key? key}) : super(key: key);

  @override
  _BasketState createState() => _BasketState();
}

class _BasketState extends State<Basket> {
  final List<LocalBasket> _basket= [];
  int totalPrice = 0;

late Future<bool> _basketDetails;
  Future<bool> _getBasket() async{
    Database database = await openDatabase(
        join(await getDatabasesPath(),"gstore_esprit_database.db")
    );
    List<Map<String,dynamic>> maps = await database.query("basket");
    for(int i=0;i<maps.length;i++)
      {
        _basket.add(LocalBasket(maps[i]["_id"], maps[i]["_image"], int.parse(maps[i]["_price"])));
        totalPrice+=int.parse(maps[i]["_price"]);
      }
    return true;
  }

  @override
  void initState() {
    _basketDetails = _getBasket();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(future: _basketDetails,builder: (BuildContext context, AsyncSnapshot<bool> snapshot){
      if(snapshot.hasData)
        {
          return Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children:  [
                  Text("Total :"+totalPrice.toString(), textScaleFactor: 1.5,)
                ],
              ),
              Container(
                  margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: const Divider(color: Colors.red)
              ),
              Expanded(
                child:ListView.builder(
                  itemCount: _basket.length,
                  itemBuilder: (BuildContext context,int index) {
                    return ElementInfo(_basket[index].id,_basket[index].image, _basket[index].price);
                  },
                ),
              )
            ],
          );
        }
      else
        {
          return Center(
            child: CircularProgressIndicator()
          );
        }
    });
  }
}
