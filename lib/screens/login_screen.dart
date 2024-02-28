import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proje_one/screens/signup_screen.dart';

class LoginScreen extends StatefulWidget{
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

 bool passToggle=true;
@override
Widget build(BuildContext context){
  return Material(
    color: Colors.white,
    child: SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
             SizedBox(height: 10),
             Padding(
            padding: EdgeInsets.all(20),
            child: Image.asset("images/login1.png"),
            ),
            SizedBox(height:10 ),
            Padding(padding: EdgeInsets.all(12),
            child: TextField(
             decoration: InputDecoration(
              border: OutlineInputBorder(),
              label: Text(" İsminizi giriniz"),
              prefixIcon: Icon(Icons.person),
             ),
            ),
            ),
             Padding(padding: EdgeInsets.all(12),
            child: TextField(
              obscureText: passToggle ? true : false,
             decoration: InputDecoration(
              border: OutlineInputBorder(),
              label: Text(" Şifrenizi giriniz"),
              prefixIcon: Icon(Icons.lock),
              suffixIcon: InkWell(
                onTap: () {
                 if(passToggle == true){
                  passToggle = false;
                 }
                 else{
                  passToggle = true;
                 }
                 setState(() {});
                },
                child: passToggle 
                ? Icon(CupertinoIcons.eye_slash_fill) 
                : Icon(CupertinoIcons.eye_fill),           
              ),
             ),
            ),
            ),
             SizedBox(height: 20),
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
                      " Giriş Yapın ",
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
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Bir hesabınız yok mu ?",
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
                builder:(context) => SignUpScreen(),
               ));
                  } ,
                   child: Text(
                    "Hesap Oluşturun",
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