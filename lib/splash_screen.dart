import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:workshop_gamix2122/navigation_menus/nav_bottom.dart';
import 'package:workshop_gamix2122/signin.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late String _route;
  late Future<bool> _session;

  Future<bool> _getSession() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if(prefs.containsKey("userId"))
      {
        _route = "/naveBottom";
      }
    else
      {
        _route = "/signin";
      }
    return true;
  }

  @override
  void initState() {
    _session = _getSession();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(future: _session,builder: (BuildContext context, AsyncSnapshot<bool> snapshot){
      if(snapshot.hasData){
        if(_route == "/signin")
          {
            return Signin();
          }
        else
          {
            return NavigationBottom();
          }
      }else
        {
          return Scaffold(
            appBar: AppBar(
              title: const Text("Chargement"),
            ),
            body: const Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
    });
  }
}

