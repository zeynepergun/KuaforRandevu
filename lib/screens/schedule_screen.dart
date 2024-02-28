import 'package:flutter/material.dart';
import 'package:proje_one/widgets/upcoming_schedule.dart';

 class ScheduleScreen  extends StatefulWidget {
   const ScheduleScreen ({super.key});
   @override
   State<ScheduleScreen > createState() => _ScheduleScreenState();
 }
 class _ScheduleScreenState extends State<ScheduleScreen > {
    
    int _buttonIndex = 0;

    final _scheduleWidgets = [
    // Upcoming Widget  
     UpcomingSchedule(), 
     
     // Completed Widget 
     Container(), 
     // Canceled Widget 
     Container(), 
    ];
   @override
   Widget build(BuildContext context) {
     return SingleChildScrollView(
     child: Padding(
      padding: EdgeInsets.only(top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
          padding: EdgeInsets.symmetric(horizontal: 15), 
          child: Text(
            " Takvim ", 
            style: TextStyle(
              fontSize: 32 , 
              fontWeight: FontWeight.w500, 
            ),
          ),
          ),
          SizedBox(height: 20), 
          Container(
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.symmetric(horizontal: 10 ),
            decoration: BoxDecoration(
              color: Color(0xFFF4F6FA), 
              borderRadius: BorderRadius.circular(10), 
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
             children: [
              InkWell(
                onTap: () {
                  setState(() {
                    _buttonIndex = 0;
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 14, horizontal: 18),
               decoration: BoxDecoration(
                color : _buttonIndex == 0
                 ? Color(0xFFEF6969) 
                : Colors.transparent, 
                borderRadius: BorderRadius.circular(10), 
               ),
               child: Text(" Yaklaşan ", style: TextStyle(
                fontSize: 16 , 
                fontWeight: FontWeight.w500, 
                color: 
                _buttonIndex == 0 ? Colors.white : Colors.black38, 
               ),
               ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    _buttonIndex = 1;
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 14 , horizontal: 18),
               decoration: BoxDecoration(
                color : _buttonIndex == 1
                 ? Color(0xFFEF6969) 
                : Colors.transparent,
                borderRadius: BorderRadius.circular(10), 
               ),
               child: Text(" Tamamlandı ", style: TextStyle(
                fontSize: 16 , 
                fontWeight: FontWeight.w500, 
                color: 
                _buttonIndex == 1 ? Colors.white : Colors.black38,  
               ),
               ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    _buttonIndex = 2;
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 14 , horizontal: 18),
               decoration: BoxDecoration(
                color : _buttonIndex == 2
                 ? Color(0xFFEF6969) 
                : Colors.transparent,
                borderRadius: BorderRadius.circular(10), 
               ),
               child: Text(" İptal Edildi ", style: TextStyle(
                fontSize: 16 , 
                fontWeight: FontWeight.w500, 
                color: 
                _buttonIndex == 2 ? Colors.white : Colors.black38, 
               ),
               ),
                ),
              ),
             ],
            ),
          ), 
          SizedBox(height: 30), 
          _scheduleWidgets[_buttonIndex], 
        ],
      ),
    ),
     );
   }
 }