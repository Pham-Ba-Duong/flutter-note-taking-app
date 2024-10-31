import 'package:flutter/material.dart';

class UserAccountPage extends StatefulWidget {
  const UserAccountPage({super.key});

  @override
  State<UserAccountPage> createState() => _UserAccountPageState();
}

class _UserAccountPageState extends State<UserAccountPage> {
  final List<Map<String, dynamic>> daysData = [
    {'name': 'Sun', 'height': 120, 'color': Colors.yellow},
    {'name': 'Mon', 'height': 80, 'color': Colors.green},
    {'name': 'Tue', 'height': 100, 'color': Colors.red},
    {'name': 'Wed', 'height': 50, 'color': Colors.lightBlue},
    {'name': 'Thu', 'height': 150, 'color': Colors.pinkAccent},
    {'name': 'Fri', 'height': 90, 'color': Colors.blue},
    {'name': 'Sat', 'height': 170, 'color': Colors.teal},
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Image User
            Container(
              padding: const EdgeInsets.all(10),
              child: const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUCQ_YPdm6ZaIRFJ3Ho1gLtEIXZTvlb8Nlsg&s',
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text('Phạm Bá Dương', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black)),
                  ],
                ),
              ),
            ),
            // Chart
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: daysData.map((day) {
                  // Gọi hàm buildColumn tạo từng cột cho các ngày trong tuần
                  return buildColumn(day['name'], day['height'], day['color']);
                }).toList(),
              ),
            ),
            const SizedBox(height: 15,),
            Container(
              width: 430,
              padding: const EdgeInsets.all(15),
              decoration: const BoxDecoration(
                color: Colors.orangeAccent,
                borderRadius: BorderRadius.all(Radius.circular(20)),
                boxShadow: [BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5.0,
                  offset: Offset(0, 1),
                )]
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Today is quote',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black54
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text('It is better to conquer yourself than \nto win a thousand battles.',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20,),
            //--------
            Container(
              width: 430,
              padding: EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(15)),
                  boxShadow: [BoxShadow(
                    color: Colors.grey,
                    blurRadius: 5.0,
                    offset: Offset(0, 1),
                  )]
              ),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 13),
                    decoration: const BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.black26, width: 1))
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.add_alert_sharp, color: Colors.black, size: 30),
                            SizedBox(width: 20,),
                            Text('Notifications'),
                          ],
                        ),
                        Icon(Icons.add, color: Colors.black, size: 30),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 13),
                    decoration: const BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.black26, width: 1))
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.messenger_outline, color: Colors.black, size: 30),
                            SizedBox(width: 20,),
                            Text('Languages'),
                          ],
                        ),
                        Icon(Icons.add, color: Colors.black, size: 30),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 13),
                    decoration: const BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.black26, width: 1))
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.ac_unit, color: Colors.black, size: 30),
                            SizedBox(width: 20,),
                            Text('FAQ'),
                          ],
                        ),
                        Icon(Icons.add, color: Colors.black, size: 30),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


Widget buildColumn(String dayName, double height, Color color) {
  return SizedBox(
    height: 200,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Opacity(
          opacity: 0.5,
          child: Container(
            width: 30,
            height: height,
            decoration: BoxDecoration(
              color: color,
              borderRadius: const BorderRadius.all(Radius.circular(20)),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Text(dayName, style: const TextStyle(color: Colors.black38)),
      ],
    ),
  );
}

