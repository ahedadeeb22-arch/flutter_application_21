// import 'package:flutter/material.dart';
// import 'menu_page.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {

//   int currentIndex = 0;

//   final pages = const [
//     HomeContent(),
//     FriendsPage(),
//     MarketplacePage(),
//     ProfilePage(),
//     MenuPage(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: pages[currentIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: currentIndex,
//         onTap: (index) {
//           setState(() => currentIndex = index);
//         },
//         selectedItemColor: Colors.blue,
//         unselectedItemColor: Colors.grey,
//         items: const [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: 'الرئيسية'),
//           BottomNavigationBarItem(icon: Icon(Icons.people), label: 'الأصدقاء'),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.store),
//             label: 'Marketplace',
//           ),
//           BottomNavigationBarItem(icon: Icon(Icons.person), label: 'الملف'),
//           BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'القائمة'),
//         ],
//       ),
//     );
//   }
// }
