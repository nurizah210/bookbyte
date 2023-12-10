import 'package:flutter/material.dart';
import '../models/user.dart';
import '../views/mainpage.dart';
import 'EnterExitRoute.dart';

class MyDrawer extends StatefulWidget {
  final String page;
  final User userdata;

  const MyDrawer({Key? key, required this.page, required this.userdata})
      : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
            currentAccountPicture: const CircleAvatar(
                foregroundImage: AssetImage('assets/images/profile.png'),
                backgroundColor: Colors.white),
            accountName: Text(widget.userdata.username.toString()),
            accountEmail: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(widget.userdata.useremail.toString()),
                    Text("RM100")
                  ]),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.money),
            title: const Text('Books'),
            onTap: () {
              Navigator.pop(context);
              
              print(widget.page.toString());
              if (widget.page.toString() == "books") {
               
                return;
              }
              Navigator.pop(context);
              Navigator.push(
                  context,
                  EnterExitRoute(
                      exitPage: MainPage(
                        userdata: widget.userdata,
                      ),
                      enterPage: MainPage(userdata: widget.userdata)));
            },
          ),
        
          ListTile(
            leading: const Icon(Icons.verified_user),
            title: const Text('My Account'),
            onTap: () {
              print(widget.page.toString());
              Navigator.pop(context);
              if (widget.page.toString() == "account") {
                //  Navigator.pop(context);
                return;
              }
              Navigator.pop(context);
            },
          ),
          const Divider(
            color: Colors.blueGrey,
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
