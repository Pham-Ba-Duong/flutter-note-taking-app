import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Hi sarah
                Container(
                  padding: EdgeInsets.all(10),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Hi, Sarah!', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black)),
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUCQ_YPdm6ZaIRFJ3Ho1gLtEIXZTvlb8Nlsg&s',
                        ),
                      ),
                    ],
                  ),
                ),
                // Search
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 1, // Độ lan
                        blurRadius: 10, // Độ mờ
                      ),
                    ],
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Search...',
                      icon: Icon(Icons.search, color: Colors.grey),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
          
                // Cards Row
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 310,
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Colors.black87,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 2, // Độ lan
                              blurRadius: 15, // Độ mờ
                              offset: Offset(0, 5), // Vị trí
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Stress day relaxation',
                              style: TextStyle(color: Colors.white, fontSize: 30),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.play_circle_fill, color: Colors.orangeAccent, size: 100),
                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: const Text(
                                    '15 min',
                                    style: TextStyle(color: Colors.black, fontSize: 18),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Container(
                        height: 310,
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 2, // Độ lan
                              blurRadius: 15, // Độ mờ
                              offset: Offset(0, 5), // Vị trí
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Evening Meditation to Relax',
                              style: TextStyle(color: Colors.black87, fontSize: 30),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.play_circle_fill, color: Colors.orangeAccent, size: 100),
                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                                  decoration: BoxDecoration(
                                    color: Colors.black12,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: const Text(
                                    '12 min',
                                    style: TextStyle(color: Colors.black, fontSize: 18),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                // Featured for you
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Featured for you',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('See all', style: TextStyle(color: Colors.black45)),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
          
                // Featured cards
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.orangeAccent,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Explore new activities', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(17),
                                ),
                                child: const Text('10 min', style: TextStyle(color: Colors.black)),
                              ),
                              const SizedBox(width: 8),
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                decoration: BoxDecoration(
                                  border: Border.all(width: 1, color: Colors.white),
                                  color: Colors.orangeAccent,
                                  borderRadius: BorderRadius.circular(17),
                                ),
                                child: const Text('Evening', style: TextStyle(color: Colors.black)),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Icon(Icons.play_circle_fill, color: Colors.white, size: 40),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 3, // Độ lan
                        blurRadius: 15, // Độ mờ
                        offset: Offset(0, 5), // Vị trí
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Meditation for deep sleep', style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600)),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                decoration: BoxDecoration(
                                  color: Colors.black12,
                                  borderRadius: BorderRadius.circular(17),
                                ),
                                child: const Text('12 min', style: TextStyle(color: Colors.black)),
                              ),
                              const SizedBox(width: 8),
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                decoration: BoxDecoration(
                                  color: Colors.white70,
                                  borderRadius: BorderRadius.circular(17),
                                  border: Border.all(width: 1, color: Colors.black12)
                                ),
                                child: const Text('Sleep', style: TextStyle(color: Colors.black)),
                              ),
                              const SizedBox(width: 8),
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                decoration: BoxDecoration(
                                  color: Colors.white70,
                                  borderRadius: BorderRadius.circular(17),
                                    border: Border.all(width: 1, color: Colors.black12)
                                ),
                                child: const Text('Evening', style: TextStyle(color: Colors.black)),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Icon(Icons.play_circle_fill, color: Colors.black, size: 40),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled, color: Colors.black,size: 30,), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.play_arrow_outlined, color: Colors.black,size: 30,), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.menu_book_outlined, color: Colors.black,size: 30,), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_sharp, color: Colors.black,size: 30,), label: ''),
        ],
      ),
    );
  }
}
