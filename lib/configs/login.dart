import 'package:flutter/material.dart';
import 'package:mysql/configs/AppRoute.dart';

import 'package:mysql/configs/Menu_Model.dart';

class HomeScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      drawer: Drawer(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('เมนู'),
                accountEmail: Text(''),
              ),
              ListTile(
                title: Text('ประเภทห้องเช่า'),
                onTap: () {
                  Navigator.pushNamed(context, AppRoute.typeRoute);
                },
              ),
              ListTile(
                title: Text('เปรียบเทียบราคาห้องเช่า'),
                onTap: () {},
              ),
              Divider(),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: ListTile(
                    title: Text('ลงชื่อเข้าใช้'),
                    onTap: () {
                      Navigator.pushNamed(context, AppRoute.registerRoute);
                    },
                  ),
                ),
              ),
            ]),
      ),
    );
  }
} //end
