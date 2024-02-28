import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

 class SettingsScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return SingleChildScrollView(
      child: Padding(
       padding: EdgeInsets.only(top: 50 , left: 20 , right: 20), 
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Ayarlar",
            style: TextStyle(
              fontSize: 30, 
              fontWeight: FontWeight.w500, 
            ),
          ),
          SizedBox(height: 30),
          ListTile(
          leading: CircleAvatar(
            radius: 30, 
            backgroundImage: AssetImage("images/kuaför3.JPG"),
          ), 
          title: Text(
            " Sezin Akarsu",
            style: TextStyle(
              fontWeight: FontWeight.w500, 
              fontSize: 25, 
            ),
          ),
          subtitle: Text( " Profile "),
          ),
          Divider(height: 50), 
          ListTile(
            onTap: () {} ,
            leading: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.blue.shade100, 
                shape: BoxShape.circle, 
              ),
              child: Icon(
                CupertinoIcons.person,
                color: Colors.blue,
                size: 35,
              ),
            ),
            title: Text(
              " Profile ", 
              style: TextStyle(
                fontWeight: FontWeight.w500, 
                fontSize: 20, 
              ),
            ),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),
          SizedBox(height: 20), 
          ListTile(
            onTap: () {} ,
            leading: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.deepPurple.shade100, 
                shape: BoxShape.circle, 
              ),
              child: Icon(
                Icons.notifications_none_outlined,
                color: Colors.deepPurple,
                size: 35,
              ),
            ),
            title: Text(
              " Bildirimler ", 
              style: TextStyle(
                fontWeight: FontWeight.w500, 
                fontSize: 20, 
              ),
            ),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),
          SizedBox(height: 20), 
          ListTile(
            onTap: () {} ,
            leading: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.indigo.shade100, 
                shape: BoxShape.circle, 
              ),
              child: Icon(
                Icons.privacy_tip_outlined,
                color: Colors.indigo,
                size: 35,
              ),
            ),
            title: Text(
              " Gizlilik ve Güvenlik  ", 
              style: TextStyle(
                fontWeight: FontWeight.w500, 
                fontSize: 20, 
              ),
            ),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),
          SizedBox(height: 20), 
          ListTile(
            onTap: () {} ,
            leading: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.green.shade100, 
                shape: BoxShape.circle, 
              ),
              child: Icon(
                Icons.settings_suggest_outlined,
                color: Colors.green,
                size: 35,
              ),
            ),
            title: Text(
              "  Genel ", 
              style: TextStyle(
                fontWeight: FontWeight.w500, 
                fontSize: 20, 
              ),
            ),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),
          SizedBox(height: 20), 
          ListTile(
            onTap: () {} ,
            leading: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.orange.shade100, 
                shape: BoxShape.circle, 
              ),
              child: Icon(
                Icons.info_outline_rounded,
                color: Colors.orange,
                size: 35,
              ),
            ),
            title: Text(
              " Hakkımızda ", 
              style: TextStyle(
                fontWeight: FontWeight.w500, 
                fontSize: 20, 
              ),
            ),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),
          Divider(height: 40), 
          ListTile(
            onTap: () {} ,
            leading: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.redAccent.shade100, 
                shape: BoxShape.circle, 
              ),
              child: Icon(
                Icons.logout,
                color: Colors.redAccent,
                size: 35,
              ),
            ),
            title: Text(
              " Oturumu Kapat ", 
              style: TextStyle(
                fontWeight: FontWeight.w500, 
                fontSize: 20, 
              ),
            ),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),
        ],
      ), 
      ),
    );
  }
 }