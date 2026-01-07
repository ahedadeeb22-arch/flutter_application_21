// import 'package:flutter/material.dart';
// import 'splash_screen.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Facebook UI Clone',
//       theme: ThemeData(primaryColor: Colors.blue, useMaterial3: true),
//       home: const SplashScreen(),
//     );
//   }
// }
// //
import 'SplashScreen.dart';
import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

/* ===========================
  APP ROOT
=========================== */
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
// ------------------------------
/* ===========================
  HOME PAGE + BOTTOM NAV
=========================== */
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;

  final pages = const [
    HomeContent(),
    Center(child: Text('الأصدقاء', style: TextStyle(fontSize: 22))),
    Center(child: Text('Marketplace', style: TextStyle(fontSize: 22))),
    Center(child: Text('الملف الشخصي', style: TextStyle(fontSize: 22))),
    MenuPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (i) => setState(() => index = i),
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'الرئيسية'),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'الأصدقاء'),
          BottomNavigationBarItem(
            icon: Icon(Icons.store),  
            label: 'Marketplace',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'الملف'),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'القائمة'),
        ],
      ),
    );
  }
}

/* ===========================
  HOME CONTENT
=========================== */
class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'facebook',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView(
        children: [
          Container(
            height: 120,
            padding: const EdgeInsets.all(8),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (context, index) {
                return Container(
                  width: 90,
                  margin: const EdgeInsets.symmetric(horizontal: 6),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(12),
                  ),
                );
              },
            ),
          ),
          postCard(),
          postCard(),
        ],
      ),
    );
  }

  Widget postCard() {
    return Card(
      margin: const EdgeInsets.all(8),
      child: Column(
        children: const [
          ListTile(
            leading: CircleAvatar(),
            title: Text('احمد خالد'),
            subtitle: Text('منذ ساعة'),
          ),
          Padding(padding: EdgeInsets.all(12), child: Text('العنوان')),
        ],
      ),
    );
  }
}

/* ===========================
  MENU PAGE
=========================== */
class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('القائمة')),
      body:
        
          ListView(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 40),
            children: [
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.search_rounded),
                    onPressed: () {},
                  ),

                  IconButton(icon: Icon(Icons.settings), onPressed: () {}),
                  Expanded(child: Text("القائمة", textAlign: TextAlign.end)),
                ],
              ),

              here(),

              SizedBox(height: 10),
              Text("اختصاراتك", textAlign: TextAlign.end),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  continar_icon_and_title("البنك", Icons.park_rounded),
                  SizedBox(width: 5),
                  continar_icon_and_title("الشتـــــاء", Icons.ac_unit_rounded),
                ],
              ),
              SizedBox(height: 20),
              Column(
                spacing: 5,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      expanded("الذكريات ", Icons.history),
                      SizedBox(width: 10),
                      expanded("العناصر المحفوظة", Icons.bookmark),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      expanded(" المجموعات", Icons.groups),
                      SizedBox(width: 10),
                      expanded("ريلز", Icons.video_library),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      expanded("Marketplace", Icons.storefront),
                      SizedBox(width: 10),
                      expanded("الاصدقاء", Icons.people),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      expanded("المناسبات", Icons.event),
                      SizedBox(width: 10),
                      expanded("الاخبار", Icons.newspaper),
                    ],
                  ),
                ],
              ),
            ],
          ),
        
      
    );
  }
}

  Expanded expanded(String title, IconData icon) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: 0.5,
            color: const Color.fromARGB(400, 114, 109, 100),
          ),
          color: const Color.fromARGB(255, 248, 247, 246),
          borderRadius: BorderRadius.circular(15),
        ),
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        alignment: Alignment.centerRight,
        child: Column(children: [Icon(icon), Text(title)]),
      ),
    );
  }

  Container continar_icon_and_title(String title, IconData icon) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9),
        border: Border.all(
          color: Colors.black54,
          width: 1,
          style: BorderStyle.solid,
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Column(
        children: [
          Icon(icon, size: 40),

          Text(title, style: TextStyle(fontSize: 20)),
        ],
      ),
    );
  }

  Container here() {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 188, 184, 183),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        children: [
          Row(
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Icon(Icons.keyboard_arrow_down),
              ),
              // Expanded(
              // child:
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("عاهد اديب عبدالله ابواصبع"),
                  SizedBox(width: 8),
                  CircleAvatar(
                    // Image.asset("assets/images/SS.jpg", fit: BoxFit.cover),
                    backgroundImage: AssetImage("assets/SS.JPG"),
                    radius: 30,
                  ),
                  // Container(
                  //   width: 50,
                  //   height: 50,
                  //   child: Image.asset("assets/SS.JPG", fit: BoxFit.cover),
                  // ),
                ],
              ),
              // ),
            ],
          ),
          Divider(),
          Container(
            height: 50,
            child: Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("انشاء صفحه علئ فيسبوك"),
                  SizedBox(width: 8),
                  CircleAvatar(
                    backgroundColor: Colors.blueGrey,

                    child: Icon(Icons.add, color: Colors.white),
                    radius: 25,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }




class MenuItem extends StatelessWidget {
  final IconData icon;
  final String title;

  const MenuItem(this.icon, this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 40, color: Colors.blue),
          const SizedBox(height: 10),
          Text(title, style: const TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}
