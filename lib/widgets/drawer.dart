// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const imageUrl =
    "https://yt3.ggpht.com/d5ppNcjeRUj50NslaFFx_AYlZaJmcmAAJVojPLm9ab1EDQLmBBz1b5HG2ef9cva0FFrMk_Feag=s900-c-k-c0x00ffffff-no-rj";
    return  Drawer(
      child:Container(
        color: Colors.red,
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Rohaib Chouhan"),
                accountEmail: Text("rohaibchouhan@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
              )
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,  
              ),
              title: Text(
                "Home" ,
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,  
              ),
              title: Text(
                "Profile" ,
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,  
              ),
              title: Text(
                "Email" ,
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.info_circle,
                color: Colors.white,  
              ),
              title: Text(
                "about" ,
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white
                ),
              ),
            )
          ]
        ),
      ),
    );
  }
}
