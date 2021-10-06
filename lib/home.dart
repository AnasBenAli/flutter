import 'package:flutter/material.dart';
import 'product_info.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>{
  final List<ProductInfo> _productInfo = [];
  @override
  void initState(){
    _productInfo.add(ProductInfo("assets/images/dmc5.jpg", "Devil May Cry 5", 200));
    _productInfo.add(ProductInfo("assets/images/re8.jpg", "Resident Evil VIII", 200));
    _productInfo.add(ProductInfo("assets/images/nfs.jpg", "Need For Speed Heat", 100));
    _productInfo.add(ProductInfo("assets/images/rdr2.jpg", "Red Dead Redemption II", 150));
    _productInfo.add(ProductInfo("assets/images/fifa.jpg", "FIFA 22", 100));
    _productInfo.add(ProductInfo("assets/images/minecraft.jpg", "Minecraft", 69));
    super.initState();
  }
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text("G-Store ESPRIT"),
    ),
    body: ListView(
      children: const [
      ],
    ),
  );
}
}