import 'package:flutter/material.dart';
import 'package:proje_one/screens/appointment_screen.dart';

class HomeScreen extends StatelessWidget{

  List symptoms = [
   " Saç Bakımı",
    " Manikür-Pedikür",
     "Kaş-Bıyık",
      "Makyaj",
      "GelinBaşı",
      "NişanBaşı",
      " Ağda",
  ];
     List imgs = [
     "kuaför1.JPG",
      "kuaför2.JPG",
      "kuaför3.JPG",
      "kuaför4.JPG",

     ];
     
@override
Widget build(BuildContext context){
  return SingleChildScrollView(
  padding: EdgeInsets.only(top:40),
   child: Column(
   crossAxisAlignment: CrossAxisAlignment.start,
   children: [
    Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
       Text(
        "Merhaba Zeynep",
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w500,
        ),
       ),
       CircleAvatar(
        radius: 30,
        backgroundImage: AssetImage("images/kuaför1.JPG"),
       ),
        ],
      ),
      ),
      SizedBox(height: 30),
       Row(
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
       children: [
        InkWell(
        onTap: () {},
        child: Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color:  Color(0xFFEF6969),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
            BoxShadow(
            color: Colors.black12,
            blurRadius: 6,
            spreadRadius: 4,
            ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Container(
           padding: EdgeInsets.all(8),
           decoration: BoxDecoration(
            color: Colors.white,
              shape: BoxShape.circle,              
           ),
           child: Icon(
            Icons.add,
              color:  Color(0xFFEF6969),
              size: 35,
           ),
          ),
          SizedBox(height: 30), 
          Text(
            " Kuaför ",
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height:5),
          Text(
            "Kuaför Randevunuzu Alınız",
            style: TextStyle(
              color: Colors.white54,
            ),
          )
          ],
         ),
        ),
        ),
        InkWell(
        onTap: () {},
        child: Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color:  Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
            BoxShadow(
            color: Colors.black12,
            blurRadius: 6,
            spreadRadius: 4,
            ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Container(
           padding: EdgeInsets.all(8),
           decoration: BoxDecoration(
             color:  Color(0xFFF0EEFA), 
              shape: BoxShape.circle,              
           ),
           child: Icon(
            Icons.home_filled,
              color:  Color(0xFFEF6969),
              size: 35,
           ),
          ),
          SizedBox(height: 30), 
          Text(
            "Ev ",
            style: TextStyle(
              fontSize: 18,
              // color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height:5),
          Text(
            "Kuaförü Evinize Çağırın",
            style: TextStyle(
              color: Colors.black54,
            ),
          ),
          ],
         ),
        ),
        ),
       ],
       ),

      SizedBox(height:25),
      Padding(
      padding: EdgeInsets.only(left: 15),
       child: Text(
        "Hangi konuda hizmet almak istiyorsunuz ? ",
        style: TextStyle(
          fontSize: 20 ,
          fontWeight: FontWeight.w500,
          color: Colors.black54,
        ),
        ),
      ),
      SizedBox(height: 70,
       child: ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: symptoms.length,
      itemBuilder: (context,index){
        return Container(
       margin: EdgeInsets.symmetric(vertical: 10 , horizontal: 15),
       padding: EdgeInsets.symmetric(horizontal: 25),
       decoration: BoxDecoration(
      color: Color(0xFFF4F6FA),
       borderRadius: BorderRadius.circular(10),
       boxShadow: [
        BoxShadow(
        color: Colors.black12,
        blurRadius: 4,
        spreadRadius: 2,
        ),
       ],
       ),
        child: Center(
        child: Text(
       symptoms[index],
       style: TextStyle(
       fontSize: 16,
        fontWeight: FontWeight.w500,
        color: Colors.black54,
         ),
        ),
        ),
       );
      },
      ),
      ),
      SizedBox(height: 15 ),
       Padding(
      padding: EdgeInsets.only(left: 15),
      child: Text(
        "Popüler Kuaförler",
        style: TextStyle(
          fontSize: 23,
          fontWeight: FontWeight.w500,
          color: Colors.black54,
        ),
      ),   
      ), 
   
    GridView.builder(
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2, 
    ),
    itemCount: 4,
    shrinkWrap: true,
    physics: NeverScrollableScrollPhysics(),
    itemBuilder: (context,index){
      return InkWell(
        onTap: () {
          Navigator.push(
          context,MaterialPageRoute(
          builder: (context) => AppointmentScreen(),
         ));
        },
         child :  Container(
       margin: EdgeInsets.all(10),
       padding: EdgeInsets.symmetric(vertical: 15),
       decoration: BoxDecoration(
      color: Colors.white,
       borderRadius: BorderRadius.circular(10),
       boxShadow: [
        BoxShadow(
        color: Colors.black12,
        blurRadius: 4,
        spreadRadius: 2,
        ),
       ],
       ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CircleAvatar(
          radius: 35,
          backgroundImage: AssetImage("images/${imgs[index]}"),
        ),
        Text(
       " Makyöz",
        style: TextStyle(
          fontSize: 18, 
          fontWeight: FontWeight.w500,
          color: Colors.black54,
        ),
        ),
        Text(
          " Yasemin Ballı ",
           style: TextStyle(
            color: Colors.black54,
           ),
        ),
        Row(
       mainAxisSize: MainAxisSize.min,
       mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.star,
              color: Colors.amber,
          ),
          Text(
            "4.9",
            style: TextStyle(
              color: Colors.black45,
            ),
          ),
         ],
        ),
      ],
    ),
  ),
  );
    },
    ),
   ],
   ),
  );
}
}