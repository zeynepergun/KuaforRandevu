import 'package:flutter/material.dart';

class UpcomingSchedule  extends StatelessWidget {
  const UpcomingSchedule ({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
    padding: EdgeInsets.symmetric(horizontal: 15 ), 
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          " Kuaför Hakkında ", 
          style: TextStyle(
            fontSize: 18, 
            fontWeight: FontWeight.w500, 
          ),
        ),

        SizedBox(height: 15), 
        Container(
          padding: EdgeInsets.symmetric(vertical: 5), 
          decoration: BoxDecoration(
            color: Colors.white , 
            borderRadius: BorderRadius.circular(10), 
            boxShadow: [
              BoxShadow(
                color: Colors.black12, 
                blurRadius: 4, 
                 spreadRadius: 2, 
              ),
            ],
          ),
         child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              ListTile(
                title: Text(
                  " Yasemin Ballı ", 
                  style: TextStyle(
                    fontWeight: FontWeight.bold, 
                  ), 
                 ),
                 subtitle: Text(" Cilt Bakım Uzmanı"),
                 trailing: CircleAvatar(
                  radius: 25, 
                  backgroundImage: AssetImage("images/kuaför2.JPG"),
                 ),
              ),
             Padding(
            padding: EdgeInsets.symmetric(horizontal: 15), 
            child: Divider(
              thickness: 1, 
              height: 20,
            ), 
             ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row( 
                children: [
                  Icon(Icons.calendar_month,
                color: Colors.black54, 
                ),
                SizedBox(width: 5), 
                Text(
                  "20/09/2023", 
                  style: TextStyle(
                    color: Colors.black54, 
                  ),
                ), 
                ],
                ),
                Row(
              children: [
                Icon(
                  Icons.access_time_filled, 
                  color: Colors.black54, 
                ),
                SizedBox(width: 5), 
                Text(
                  "10:00 AM ", 
                  style: TextStyle(
                    color: Colors.black54, 
                  ),
                ),
              ],
            ),
              Row(children: [
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.green, 
                    shape: BoxShape.circle, 
                  ),
                ),
                SizedBox(width: 5), 
                 Text(
                  "  Onaylandı", 
                  style: TextStyle(
                    color: Colors.black54 , 
                  ),
                 ),
              ],),   
              ],
            ),

            SizedBox(height: 15), 
            Row(
              mainAxisAlignment:MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {},
                   child: Container(
                    width: 150, 
                    padding: EdgeInsets.symmetric(vertical: 12), 
                    decoration: BoxDecoration(
                      color: Color(0xFFF4F6FA), 
                      borderRadius: BorderRadius.circular(10), 
                    ),
                    child: Center(
                      child: Text(
                        " İptal Et ", 
                          style: TextStyle(
                            fontSize: 16, 
                            fontWeight: FontWeight.w500, 
                            color: Colors.black, 
                          ),
                      ),
                    ),
                   ),
                ),
                InkWell(
                  onTap: () {},
                   child: Container(
                    width: 150, 
                    padding: EdgeInsets.symmetric(vertical: 12), 
                    decoration: BoxDecoration(
                      color:  Color(0xFFEF6969), 
                      borderRadius: BorderRadius.circular(10), 
                    ),
                    child: Center(
                      child: Text(
                        " Yeniden Planla ", 
                          style: TextStyle(
                            fontSize: 16, 
                            fontWeight: FontWeight.w500, 
                            color: Colors.white, 
                          ),
                      ),
                    ),
                   ),
                ),
              ],
            ),
            SizedBox(height: 10),           
            ],
          ),
         ),
        ),
        SizedBox(height: 20), 
         Text(
          " Kuaför Hakkında ", 
          style: TextStyle(
            fontSize: 18, 
            fontWeight: FontWeight.w500, 
          ),
        ),

        SizedBox(height: 15), 
        Container(
          padding: EdgeInsets.symmetric(vertical: 5), 
          decoration: BoxDecoration(
            color: Colors.white , 
            borderRadius: BorderRadius.circular(10), 
            boxShadow: [
              BoxShadow(
                color: Colors.black12, 
                blurRadius: 4, 
                 spreadRadius: 2, 
              ),
            ],
          ),
         child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              ListTile(
                title: Text(
                  " Suzan Bektaş ", 
                  style: TextStyle(
                    fontWeight: FontWeight.bold, 
                  ), 
                 ),
                 subtitle: Text(" Makyöz"),
                 trailing: CircleAvatar(
                  radius: 25, 
                  backgroundImage: AssetImage("images/kuaför3.JPG"),
                 ),
              ),
             Padding(
            padding: EdgeInsets.symmetric(horizontal: 15), 
            child: Divider(
              thickness: 1, 
              height: 20,
            ), 
             ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row( 
                children: [
                  Icon(Icons.calendar_month,
                color: Colors.black54, 
                ),
                SizedBox(width: 5), 
                Text(
                  "20/09/2023", 
                  style: TextStyle(
                    color: Colors.black54, 
                  ),
                ), 
                ],
                ),
                Row(
              children: [
                Icon(
                  Icons.access_time_filled, 
                  color: Colors.black54, 
                ),
                SizedBox(width: 5), 
                Text(
                  "11:00 AM ", 
                  style: TextStyle(
                    color: Colors.black54, 
                  ),
                ),
              ],
            ),
              Row(children: [
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.green, 
                    shape: BoxShape.circle, 
                  ),
                ),
                SizedBox(width: 5), 
                 Text(
                  "  Bekleniyor", 
                  style: TextStyle(
                    color: Colors.red , 
                  ),
                 ),
              ],),   
              ],
            ),

            SizedBox(height: 15), 
            Row(
              mainAxisAlignment:MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {},
                   child: Container(
                    width: 150, 
                    padding: EdgeInsets.symmetric(vertical: 12), 
                    decoration: BoxDecoration(
                      color: Color(0xFFF4F6FA), 
                      borderRadius: BorderRadius.circular(10), 
                    ),
                    child: Center(
                      child: Text(
                        " İptal Et ", 
                          style: TextStyle(
                            fontSize: 16, 
                            fontWeight: FontWeight.w500, 
                            color: Colors.black, 
                          ),
                      ),
                    ),
                   ),
                ),
                InkWell(
                  onTap: () {},
                   child: Container(
                    width: 150, 
                    padding: EdgeInsets.symmetric(vertical: 12), 
                    decoration: BoxDecoration(
                      color:  Color(0xFFEF6969), 
                      borderRadius: BorderRadius.circular(10), 
                    ),
                    child: Center(
                      child: Text(
                        " Yeniden Planla ", 
                          style: TextStyle(
                            fontSize: 16, 
                            fontWeight: FontWeight.w500, 
                            color: Colors.white, 
                          ),
                      ),
                    ),
                   ),
                ),
              ],
            ),
            SizedBox(height: 10),           
            ],
          ),
         ),
        ),
         SizedBox(height: 10),  
         Text(
          " Kuaför Hakkında ", 
          style: TextStyle(
            fontSize: 18, 
            fontWeight: FontWeight.w500, 
          ),
        ),

        SizedBox(height: 15), 
        Container(
          padding: EdgeInsets.symmetric(vertical: 5), 
          decoration: BoxDecoration(
            color: Colors.white , 
            borderRadius: BorderRadius.circular(10), 
            boxShadow: [
              BoxShadow(
                color: Colors.black12, 
                blurRadius: 4, 
                 spreadRadius: 2, 
              ),
            ],
          ),
         child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              ListTile(
                title: Text(
                  " Seda Akça ", 
                  style: TextStyle(
                    fontWeight: FontWeight.bold, 
                  ), 
                 ),
                 subtitle: Text(" Saç Bakım Uzmanı "),
                 trailing: CircleAvatar(
                  radius: 25, 
                  backgroundImage: AssetImage("images/kuaför4.JPG"),
                 ),
              ),
             Padding(
            padding: EdgeInsets.symmetric(horizontal: 15), 
            child: Divider(
              thickness: 1, 
              height: 20,
            ), 
             ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row( 
                children: [
                  Icon(Icons.calendar_month,
                color: Colors.black54, 
                ),
                SizedBox(width: 5), 
                Text(
                  "21/09/2023", 
                  style: TextStyle(
                    color: Colors.black54, 
                  ),
                ), 
                ],
                ),
                Row(
              children: [
                Icon(
                  Icons.access_time_filled, 
                  color: Colors.black54, 
                ),
                SizedBox(width: 5), 
                Text(
                  "12:00 AM ", 
                  style: TextStyle(
                    color: Colors.black54, 
                  ),
                ),
              ],
            ),
              Row(children: [
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.green, 
                    shape: BoxShape.circle, 
                  ),
                ),
                SizedBox(width: 5), 
                 Text(
                  "  Bekleniyor", 
                  style: TextStyle(
                    color: Colors.red , 
                  ),
                 ),
              ],),   
              ],
            ),

            SizedBox(height: 15), 
            Row(
              mainAxisAlignment:MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {},
                   child: Container(
                    width: 150, 
                    padding: EdgeInsets.symmetric(vertical: 12), 
                    decoration: BoxDecoration(
                      color: Color(0xFFF4F6FA), 
                      borderRadius: BorderRadius.circular(10), 
                    ),
                    child: Center(
                      child: Text(
                        " İptal Et", 
                          style: TextStyle(
                            fontSize: 16, 
                            fontWeight: FontWeight.w500, 
                            color: Colors.black, 
                          ),
                      ),
                    ),
                   ),
                ),
                InkWell(
                  onTap: () {},
                   child: Container(
                    width: 150, 
                    padding: EdgeInsets.symmetric(vertical: 12), 
                    decoration: BoxDecoration(
                      color:  Color(0xFFEF6969), 
                      borderRadius: BorderRadius.circular(10), 
                    ),
                    child: Center(
                      child: Text(
                        " Yeniden Planla ", 
                          style: TextStyle(
                            fontSize: 16, 
                            fontWeight: FontWeight.w500, 
                            color: Colors.white, 
                          ),
                      ),
                    ),
                   ),
                ),
              ],
            ),
            SizedBox(height: 10),           
            ],
          ),
         ),
        ),
      ],
    ),
    );
  }
}