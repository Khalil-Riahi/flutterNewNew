// // // // import 'package:flutter/material.dart';
// // // // import 'package:flutter_application_1/select_dates_screen.dart';
// // // // import 'choose_plan_screen.dart';
// // // // // import 'screens/choose_plan_screen.dart';  // ✅ Import it correctly

// // // // void main() {
// // // //   runApp(MaterialApp(
// // // //     debugShowCheckedModeBanner: false,
// // // //     home: ChoosePlanScreen(),
// // // //   ));
// // // // }

// // // import 'package:flutter/material.dart';
// // // import 'choose_plan_screen.dart'; // 👈 Correctly importing the ChoosePlanScreen

// // // void main() {
// // //   runApp(const MyApp());
// // // }

// // // class MyApp extends StatelessWidget {
// // //   const MyApp({super.key});

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return MaterialApp(
// // //       debugShowCheckedModeBanner: false,
// // //       title: 'Reservation App',
// // //       theme: ThemeData(
// // //         primarySwatch: Colors.blue,
// // //         fontFamily: 'Poppins', // 👈 Optional if you want a nice font
// // //         scaffoldBackgroundColor: Color(0xFFF9FAFB),
// // //       ),
// // //       home: ChoosePlanScreen(),
// // //     );
// // //   }
// // // }

// // import 'package:flutter/material.dart';
// // import 'package:flutter_application_1/buy_points.dart';
// // import 'choose_plan_screen.dart';
// // import 'profile_screen.dart'; // 👈 Import your ProfileScreen

// // void main() {
// //   runApp(MyApp());
// // }

// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       debugShowCheckedModeBanner: false,
// //       // home: ProfileScreen(),
// //       home: BuyPoints(),// 👈 Set the home page to ProfileScreen
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'coworking_home.dart'; // 👈 import the page you created

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Coworking App',
//       theme: ThemeData(
//         fontFamily: 'Roboto',
//         primarySwatch: Colors.blue,
//       ),
//       home: CoworkingHomePage(), // 👈 this loads your new UI
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'coworking_home.dart';
import 'profile_screen.dart'; // Your existing ProfileScreen
// import 'home_screen.dart'; // Your Home screen

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coworking App',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MainNavigation(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    CoworkingApp(),
    Placeholder(), // Schedule
    Placeholder(), // Dashboard
    ProfileScreen(), // Profile 👈 Ensure this is last
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Color(0xFF3C5DF7),
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today), label: "Schedule"),
          BottomNavigationBarItem(
              icon: Icon(Icons.dashboard), label: "Dashboard"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), label: "Profile"), // ✅
        ],
      ),
    );
  }
}
