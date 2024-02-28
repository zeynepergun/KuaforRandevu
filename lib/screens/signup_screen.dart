import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proje_one/screens/login_screen.dart';

class SignUpScreen extends StatefulWidget{
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
bool passToggle = true;
@override
Widget build(BuildContext context){
 return Material(
  color: Colors.white,
  child: SingleChildScrollView(
    child: SafeArea(
      child: Column(
        children: [
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.all(20),
            child: Image.asset("images/sign1.png"),
          ),
          SizedBox(height: 15),
           Padding(padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
            child:  TextField(
              decoration: InputDecoration(
                labelText: "Adınızı ve Soyadınızı Giriniz",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
              ),
            ),
           ),
           Padding(padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
            child:  TextField(
              decoration: InputDecoration(
                labelText: "E-mail adresinizi Giriniz",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email),
              ),
            ),
           ),
           Padding(padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
            child:  TextField(
              decoration: InputDecoration(
                labelText: "Telefon Numaranızı Giriniz",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.phone),
              ),
            ),
           ),
           Padding(padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
            child:  TextField(
              obscureText: passToggle ? true : false,
              decoration: InputDecoration(
                labelText: "E-mail Şifrenizi Giriniz",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
                suffixIcon: InkWell( onTap: () {
                  if(passToggle == true){
                    passToggle = false;
                  }
                  else {
                    passToggle = true;
                  }
                  setState(() {});
                }, 
                child: passToggle
               ? Icon(CupertinoIcons.eye_slash_fill) 
               :  Icon(CupertinoIcons.eye_fill),
                ),
              ),
            ),
           ),
           SizedBox(height: 10),
           Padding(
              padding: const EdgeInsets.all(20),
              child: 
            SizedBox(
              width: 390,
              child: Material(
                
               color: Color(0xFFEF6969),
               borderRadius: BorderRadius.circular(12),
               child: InkWell(
                onTap: (){
                 //Navigator.push(context,
                 // MaterialPageRoute(
                //builder:(context) => LoginScreen(),
              // ));
                },
                child: Padding(
                      padding:
                     EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  child: Center(
                    child: Text(
                      " Hesap Oluşturun  ",
                     style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                     ),
                    ),
                  ),
                ),
                ),
                ),
            ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Zaten Hesabınız Var Mı?",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black54,
                ),
                ),
                TextButton(
                  onPressed: () {
                     Navigator.push(context,
                  MaterialPageRoute(
                builder:(context) => LoginScreen(),
               ));
                  } ,
                   child: Text(
                    "Giriş Yapın",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color:  Color(0xFFEF6969),
                    ),
                ),
                ),
              ],
            ),
        ],
      ),
    ),
  ),
 );

}
}