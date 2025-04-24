// // // // // // // // // // // import 'package:flutter/material.dart';

// // // // // // // // // // // class ProfileScreen extends StatelessWidget {
// // // // // // // // // // //   const ProfileScreen({Key? key}) : super(key: key);

// // // // // // // // // // //   @override
// // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // //     return Scaffold(
// // // // // // // // // // //       backgroundColor: const Color(0xFFE5F4F3),
// // // // // // // // // // //       body: SingleChildScrollView(
// // // // // // // // // // //         child: Column(
// // // // // // // // // // //           children: [
// // // // // // // // // // //             Stack(
// // // // // // // // // // //               children: [
// // // // // // // // // // //                 // Background Image
// // // // // // // // // // //                 Container(
// // // // // // // // // // //                   height: 220,
// // // // // // // // // // //                   decoration: const BoxDecoration(
// // // // // // // // // // //                     image: DecorationImage(
// // // // // // // // // // //                       image: AssetImage(
// // // // // // // // // // //                           'assets/background.jpg'), // 🔥 Your background image
// // // // // // // // // // //                       fit: BoxFit.cover,
// // // // // // // // // // //                     ),
// // // // // // // // // // //                   ),
// // // // // // // // // // //                 ),
// // // // // // // // // // //                 // Profile Details
// // // // // // // // // // //                 Positioned(
// // // // // // // // // // //                   top: 140,
// // // // // // // // // // //                   left: 0,
// // // // // // // // // // //                   right: 0,
// // // // // // // // // // //                   child: Column(
// // // // // // // // // // //                     children: [
// // // // // // // // // // //                       CircleAvatar(
// // // // // // // // // // //                         radius: 50,
// // // // // // // // // // //                         backgroundColor: Colors.white,
// // // // // // // // // // //                         child: CircleAvatar(
// // // // // // // // // // //                           radius: 46,
// // // // // // // // // // //                           backgroundImage: AssetImage(
// // // // // // // // // // //                               'assets/image.png'), // 🔥 Your profile image
// // // // // // // // // // //                         ),
// // // // // // // // // // //                       ),
// // // // // // // // // // //                       const SizedBox(height: 10),
// // // // // // // // // // //                       const Text(
// // // // // // // // // // //                         "Ahmad Nawaz Ali",
// // // // // // // // // // //                         style: TextStyle(
// // // // // // // // // // //                           fontWeight: FontWeight.bold,
// // // // // // // // // // //                           fontSize: 22,
// // // // // // // // // // //                         ),
// // // // // // // // // // //                       ),
// // // // // // // // // // //                       const Text(
// // // // // // // // // // //                         "@ahmad.nawaz.ali",
// // // // // // // // // // //                         style: TextStyle(color: Colors.grey),
// // // // // // // // // // //                       ),
// // // // // // // // // // //                     ],
// // // // // // // // // // //                   ),
// // // // // // // // // // //                 ),
// // // // // // // // // // //               ],
// // // // // // // // // // //             ),
// // // // // // // // // // //             const SizedBox(height: 80),

// // // // // // // // // // //             // Followers and Following
// // // // // // // // // // //             Padding(
// // // // // // // // // // //               padding: const EdgeInsets.symmetric(horizontal: 40),
// // // // // // // // // // //               child: Row(
// // // // // // // // // // //                 mainAxisAlignment: MainAxisAlignment.spaceAround,
// // // // // // // // // // //                 children: const [
// // // // // // // // // // //                   _StatItem(label: "Following", value: "210"),
// // // // // // // // // // //                   _StatItem(label: "Followers", value: "359k"),
// // // // // // // // // // //                 ],
// // // // // // // // // // //               ),
// // // // // // // // // // //             ),
// // // // // // // // // // //             const SizedBox(height: 20),

// // // // // // // // // // //             // Personal Info Card
// // // // // // // // // // //             _buildSectionCard(
// // // // // // // // // // //               title: "Personal Info",
// // // // // // // // // // //               items: [
// // // // // // // // // // //                 _InfoRow(
// // // // // // // // // // //                     icon: Icons.calendar_today,
// // // // // // // // // // //                     label: "Date of birth",
// // // // // // // // // // //                     value: "21 Sep 2001"),
// // // // // // // // // // //                 _InfoRow(icon: Icons.male, label: "Gender", value: "Male"),
// // // // // // // // // // //                 _InfoRow(
// // // // // // // // // // //                     icon: Icons.favorite_border,
// // // // // // // // // // //                     label: "Marital Status",
// // // // // // // // // // //                     value: "It's Complex"),
// // // // // // // // // // //                 _InfoRow(
// // // // // // // // // // //                     icon: Icons.work_outline,
// // // // // // // // // // //                     label: "Profession",
// // // // // // // // // // //                     value: "Product Designer"),
// // // // // // // // // // //                 _InfoRow(
// // // // // // // // // // //                     icon: Icons.email_outlined,
// // // // // // // // // // //                     label: "Email Address",
// // // // // // // // // // //                     value: "info@garvil.com"),
// // // // // // // // // // //                 _InfoRow(
// // // // // // // // // // //                     icon: Icons.phone_outlined,
// // // // // // // // // // //                     label: "Phone Number",
// // // // // // // // // // //                     value: "+92 302 536 3545"),
// // // // // // // // // // //               ],
// // // // // // // // // // //             ),

// // // // // // // // // // //             // Other Sections
// // // // // // // // // // //             _buildSimpleCard("Languages", "English, Urdu"),
// // // // // // // // // // //             _buildSimpleCard("Places", "Lahore, Islamabad"),
// // // // // // // // // // //             _buildSimpleCard("Interests", "Traveling, Adventure, Friendships"),

// // // // // // // // // // //             const SizedBox(height: 20),

// // // // // // // // // // //             // Settings Section
// // // // // // // // // // //             _buildSectionCard(
// // // // // // // // // // //               title: "Settings",
// // // // // // // // // // //               items: [
// // // // // // // // // // //                 _SettingItem(label: "Privacy"),
// // // // // // // // // // //                 _SettingItem(label: "Information"),
// // // // // // // // // // //               ],
// // // // // // // // // // //             ),

// // // // // // // // // // //             // Log out button
// // // // // // // // // // //             Padding(
// // // // // // // // // // //               padding: const EdgeInsets.all(20),
// // // // // // // // // // //               child: SizedBox(
// // // // // // // // // // //                 width: double.infinity,
// // // // // // // // // // //                 child: OutlinedButton.icon(
// // // // // // // // // // //                   style: OutlinedButton.styleFrom(
// // // // // // // // // // //                     side: const BorderSide(color: Colors.red),
// // // // // // // // // // //                   ),
// // // // // // // // // // //                   onPressed: () {
// // // // // // // // // // //                     // logout action
// // // // // // // // // // //                   },
// // // // // // // // // // //                   icon: const Icon(Icons.logout, color: Colors.red),
// // // // // // // // // // //                   label: const Text("Log out",
// // // // // // // // // // //                       style: TextStyle(color: Colors.red)),
// // // // // // // // // // //                 ),
// // // // // // // // // // //               ),
// // // // // // // // // // //             ),
// // // // // // // // // // //           ],
// // // // // // // // // // //         ),
// // // // // // // // // // //       ),
// // // // // // // // // // //     );
// // // // // // // // // // //   }

// // // // // // // // // // //   Widget _buildSectionCard(
// // // // // // // // // // //       {required String title, required List<Widget> items}) {
// // // // // // // // // // //     return Padding(
// // // // // // // // // // //       padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
// // // // // // // // // // //       child: Container(
// // // // // // // // // // //         padding: const EdgeInsets.all(20),
// // // // // // // // // // //         decoration: BoxDecoration(
// // // // // // // // // // //           color: Colors.white,
// // // // // // // // // // //           borderRadius: BorderRadius.circular(20),
// // // // // // // // // // //         ),
// // // // // // // // // // //         child: Column(
// // // // // // // // // // //           crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // // // // // //           children: [
// // // // // // // // // // //             Text(title,
// // // // // // // // // // //                 style:
// // // // // // // // // // //                     const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
// // // // // // // // // // //             const SizedBox(height: 10),
// // // // // // // // // // //             ...items,
// // // // // // // // // // //           ],
// // // // // // // // // // //         ),
// // // // // // // // // // //       ),
// // // // // // // // // // //     );
// // // // // // // // // // //   }

// // // // // // // // // // //   Widget _buildSimpleCard(String title, String subtitle) {
// // // // // // // // // // //     return Padding(
// // // // // // // // // // //       padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
// // // // // // // // // // //       child: Container(
// // // // // // // // // // //         padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
// // // // // // // // // // //         decoration: BoxDecoration(
// // // // // // // // // // //           color: Colors.white,
// // // // // // // // // // //           borderRadius: BorderRadius.circular(20),
// // // // // // // // // // //         ),
// // // // // // // // // // //         child: Row(
// // // // // // // // // // //           children: [
// // // // // // // // // // //             Expanded(
// // // // // // // // // // //                 child: Text(title,
// // // // // // // // // // //                     style: const TextStyle(fontWeight: FontWeight.bold))),
// // // // // // // // // // //             Expanded(
// // // // // // // // // // //               child: Text(
// // // // // // // // // // //                 subtitle,
// // // // // // // // // // //                 style: const TextStyle(color: Colors.grey),
// // // // // // // // // // //                 textAlign: TextAlign.end,
// // // // // // // // // // //               ),
// // // // // // // // // // //             ),
// // // // // // // // // // //           ],
// // // // // // // // // // //         ),
// // // // // // // // // // //       ),
// // // // // // // // // // //     );
// // // // // // // // // // //   }
// // // // // // // // // // // }

// // // // // // // // // // // class _StatItem extends StatelessWidget {
// // // // // // // // // // //   final String label;
// // // // // // // // // // //   final String value;

// // // // // // // // // // //   const _StatItem({required this.label, required this.value});

// // // // // // // // // // //   @override
// // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // //     return Column(
// // // // // // // // // // //       children: [
// // // // // // // // // // //         Text(value,
// // // // // // // // // // //             style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
// // // // // // // // // // //         const SizedBox(height: 5),
// // // // // // // // // // //         Text(label, style: const TextStyle(color: Colors.grey)),
// // // // // // // // // // //       ],
// // // // // // // // // // //     );
// // // // // // // // // // //   }
// // // // // // // // // // // }

// // // // // // // // // // // class _InfoRow extends StatelessWidget {
// // // // // // // // // // //   final IconData icon;
// // // // // // // // // // //   final String label;
// // // // // // // // // // //   final String value;

// // // // // // // // // // //   const _InfoRow(
// // // // // // // // // // //       {required this.icon, required this.label, required this.value});

// // // // // // // // // // //   @override
// // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // //     return Padding(
// // // // // // // // // // //       padding: const EdgeInsets.symmetric(vertical: 8),
// // // // // // // // // // //       child: Row(
// // // // // // // // // // //         children: [
// // // // // // // // // // //           Icon(icon, color: Colors.orange),
// // // // // // // // // // //           const SizedBox(width: 10),
// // // // // // // // // // //           Expanded(child: Text(label)),
// // // // // // // // // // //           Expanded(
// // // // // // // // // // //               child: Text(value,
// // // // // // // // // // //                   textAlign: TextAlign.end,
// // // // // // // // // // //                   style: const TextStyle(fontWeight: FontWeight.bold))),
// // // // // // // // // // //         ],
// // // // // // // // // // //       ),
// // // // // // // // // // //     );
// // // // // // // // // // //   }
// // // // // // // // // // // }

// // // // // // // // // // // class _SettingItem extends StatelessWidget {
// // // // // // // // // // //   final String label;

// // // // // // // // // // //   const _SettingItem({required this.label});

// // // // // // // // // // //   @override
// // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // //     return ListTile(
// // // // // // // // // // //       contentPadding: EdgeInsets.zero,
// // // // // // // // // // //       title: Text(label),
// // // // // // // // // // //       trailing: const Icon(Icons.arrow_forward_ios, size: 16),
// // // // // // // // // // //       onTap: () {
// // // // // // // // // // //         // Navigate to settings page if needed
// // // // // // // // // // //       },
// // // // // // // // // // //     );
// // // // // // // // // // //   }
// // // // // // // // // // // }

// // // // // // // // // // import 'package:flutter/material.dart';

// // // // // // // // // // class ProfileScreen extends StatelessWidget {
// // // // // // // // // //   @override
// // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // //     return Scaffold(
// // // // // // // // // //       backgroundColor: Color(0xFFEFF6F7),
// // // // // // // // // //       body: SingleChildScrollView(
// // // // // // // // // //         child: Column(
// // // // // // // // // //           children: [
// // // // // // // // // //             Stack(
// // // // // // // // // //               clipBehavior: Clip.none,
// // // // // // // // // //               alignment: Alignment.center,
// // // // // // // // // //               children: [
// // // // // // // // // //                 Container(
// // // // // // // // // //                   height: 200,
// // // // // // // // // //                   decoration: BoxDecoration(
// // // // // // // // // //                     image: DecorationImage(
// // // // // // // // // //                       image: AssetImage('assets/background.jpg'),
// // // // // // // // // //                       fit: BoxFit.cover,
// // // // // // // // // //                     ),
// // // // // // // // // //                   ),
// // // // // // // // // //                 ),
// // // // // // // // // //                 Positioned(
// // // // // // // // // //                   top: 140,
// // // // // // // // // //                   child: CircleAvatar(
// // // // // // // // // //                     radius: 50,
// // // // // // // // // //                     backgroundColor: Colors.white,
// // // // // // // // // //                     child: CircleAvatar(
// // // // // // // // // //                       radius: 47,
// // // // // // // // // //                       backgroundImage: AssetImage('assets/profile.jpg'),
// // // // // // // // // //                     ),
// // // // // // // // // //                   ),
// // // // // // // // // //                 ),
// // // // // // // // // //               ],
// // // // // // // // // //             ),
// // // // // // // // // //             SizedBox(height: 70),

// // // // // // // // // //             // (✅ No Following/Followers here)

// // // // // // // // // //             Padding(
// // // // // // // // // //               padding: const EdgeInsets.all(16.0),
// // // // // // // // // //               child: Column(
// // // // // // // // // //                 children: [
// // // // // // // // // //                   Container(
// // // // // // // // // //                     padding: EdgeInsets.all(20),
// // // // // // // // // //                     decoration: BoxDecoration(
// // // // // // // // // //                       color: Colors.white,
// // // // // // // // // //                       borderRadius: BorderRadius.circular(20),
// // // // // // // // // //                     ),
// // // // // // // // // //                     child: Column(
// // // // // // // // // //                       crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // // // // //                       children: [
// // // // // // // // // //                         Text(
// // // // // // // // // //                           "Personal Info",
// // // // // // // // // //                           style: TextStyle(
// // // // // // // // // //                             fontWeight: FontWeight.bold,
// // // // // // // // // //                             fontSize: 18,
// // // // // // // // // //                           ),
// // // // // // // // // //                         ),
// // // // // // // // // //                         SizedBox(height: 20),
// // // // // // // // // //                         buildInfoRow(Icons.calendar_today, "Date of birth", "21 Sep 2001"),
// // // // // // // // // //                         buildInfoRow(Icons.male, "Gender", "Male"),
// // // // // // // // // //                         buildInfoRow(Icons.favorite, "Marital Status", "It's Complex"),
// // // // // // // // // //                         buildInfoRow(Icons.work, "Profession", "Product Designer"),
// // // // // // // // // //                         buildInfoRow(Icons.email, "Email Address", "info@garvil.com"),
// // // // // // // // // //                         buildInfoRow(Icons.phone, "Phone Number", "+92 302 536 3545"),
// // // // // // // // // //                       ],
// // // // // // // // // //                     ),
// // // // // // // // // //                   ),
// // // // // // // // // //                   SizedBox(height: 20),
// // // // // // // // // //                   buildSimpleInfo("Languages", "English, Urdu"),
// // // // // // // // // //                   buildSimpleInfo("Places", "Lahore, Islamabad"),
// // // // // // // // // //                   buildSimpleInfo("Interests", "Traveling, Adventure, Friendships"),
// // // // // // // // // //                   SizedBox(height: 20),
// // // // // // // // // //                   Text(
// // // // // // // // // //                     "Settings",
// // // // // // // // // //                     style: TextStyle(
// // // // // // // // // //                       fontWeight: FontWeight.bold,
// // // // // // // // // //                       fontSize: 18,
// // // // // // // // // //                     ),
// // // // // // // // // //                   ),
// // // // // // // // // //                   SizedBox(height: 10),
// // // // // // // // // //                   buildSimpleInfo("Privacy", ""),
// // // // // // // // // //                   buildSimpleInfo("Information", ""),
// // // // // // // // // //                   buildSimpleInfo("Log out", ""),
// // // // // // // // // //                 ],
// // // // // // // // // //               ),
// // // // // // // // // //             ),
// // // // // // // // // //           ],
// // // // // // // // // //         ),
// // // // // // // // // //       ),
// // // // // // // // // //     );
// // // // // // // // // //   }

// // // // // // // // // //   Widget buildInfoRow(IconData icon, String title, String value) {
// // // // // // // // // //     return Padding(
// // // // // // // // // //       padding: const EdgeInsets.symmetric(vertical: 8),
// // // // // // // // // //       child: Row(
// // // // // // // // // //         children: [
// // // // // // // // // //           Icon(icon, color: Colors.orange),
// // // // // // // // // //           SizedBox(width: 10),
// // // // // // // // // //           Expanded(
// // // // // // // // // //             child: Text(
// // // // // // // // // //               title,
// // // // // // // // // //               style: TextStyle(fontSize: 16),
// // // // // // // // // //             ),
// // // // // // // // // //           ),
// // // // // // // // // //           Text(
// // // // // // // // // //             value,
// // // // // // // // // //             style: TextStyle(
// // // // // // // // // //               fontWeight: FontWeight.bold,
// // // // // // // // // //               fontSize: 16,
// // // // // // // // // //             ),
// // // // // // // // // //           ),
// // // // // // // // // //         ],
// // // // // // // // // //       ),
// // // // // // // // // //     );
// // // // // // // // // //   }

// // // // // // // // // //   Widget buildSimpleInfo(String title, String value) {
// // // // // // // // // //     return Container(
// // // // // // // // // //       margin: EdgeInsets.symmetric(vertical: 8),
// // // // // // // // // //       padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
// // // // // // // // // //       decoration: BoxDecoration(
// // // // // // // // // //         color: Colors.white,
// // // // // // // // // //         borderRadius: BorderRadius.circular(16),
// // // // // // // // // //       ),
// // // // // // // // // //       child: Row(
// // // // // // // // // //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // // // // // // // // //         children: [
// // // // // // // // // //           Text(
// // // // // // // // // //             title,
// // // // // // // // // //             style: TextStyle(
// // // // // // // // // //               fontWeight: FontWeight.bold,
// // // // // // // // // //               fontSize: 16,
// // // // // // // // // //             ),
// // // // // // // // // //           ),
// // // // // // // // // //           if (value.isNotEmpty)
// // // // // // // // // //             Text(
// // // // // // // // // //               value,
// // // // // // // // // //               style: TextStyle(color: Colors.grey),
// // // // // // // // // //             ),
// // // // // // // // // //         ],
// // // // // // // // // //       ),
// // // // // // // // // //     );
// // // // // // // // // //   }
// // // // // // // // // // }

// // // // // // // // // import 'package:flutter/material.dart';

// // // // // // // // // class ProfileScreen extends StatelessWidget {
// // // // // // // // //   @override
// // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // //     return Scaffold(
// // // // // // // // //       backgroundColor: Color(0xFFEFF6F7),
// // // // // // // // //       body: SingleChildScrollView(
// // // // // // // // //         child: Column(
// // // // // // // // //           children: [
// // // // // // // // //             Stack(
// // // // // // // // //               clipBehavior: Clip.none,
// // // // // // // // //               alignment: Alignment.center,
// // // // // // // // //               children: [
// // // // // // // // //                 Container(
// // // // // // // // //                   height: 200,
// // // // // // // // //                   decoration: BoxDecoration(
// // // // // // // // //                     image: DecorationImage(
// // // // // // // // //                       image: AssetImage('assets/background.jpg'),
// // // // // // // // //                       fit: BoxFit.cover,
// // // // // // // // //                     ),
// // // // // // // // //                   ),
// // // // // // // // //                 ),
// // // // // // // // //                 Positioned(
// // // // // // // // //                   top: 140,
// // // // // // // // //                   child: CircleAvatar(
// // // // // // // // //                     radius: 50,
// // // // // // // // //                     backgroundColor: Colors.white,
// // // // // // // // //                     child: CircleAvatar(
// // // // // // // // //                       radius: 47,
// // // // // // // // //                       backgroundImage: AssetImage('assets/profile.jpg'),
// // // // // // // // //                     ),
// // // // // // // // //                   ),
// // // // // // // // //                 ),
// // // // // // // // //               ],
// // // // // // // // //             ),
// // // // // // // // //             SizedBox(height: 70),

// // // // // // // // //             Padding(
// // // // // // // // //               padding: const EdgeInsets.all(16.0),
// // // // // // // // //               child: Column(
// // // // // // // // //                 children: [
// // // // // // // // //                   Container(
// // // // // // // // //                     padding: EdgeInsets.all(20),
// // // // // // // // //                     decoration: BoxDecoration(
// // // // // // // // //                       color: Colors.white,
// // // // // // // // //                       borderRadius: BorderRadius.circular(20),
// // // // // // // // //                     ),
// // // // // // // // //                     child: Column(
// // // // // // // // //                       crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // // // //                       children: [
// // // // // // // // //                         Text(
// // // // // // // // //                           "Personal Info",
// // // // // // // // //                           style: TextStyle(
// // // // // // // // //                             fontWeight: FontWeight.bold,
// // // // // // // // //                             fontSize: 18,
// // // // // // // // //                           ),
// // // // // // // // //                         ),
// // // // // // // // //                         SizedBox(height: 20),
// // // // // // // // //                         buildInfoRow(Icons.calendar_today, "Date of birth", "21 Sep 2001"),
// // // // // // // // //                         buildInfoRow(Icons.male, "Gender", "Male"),
// // // // // // // // //                         buildInfoRow(Icons.favorite, "Marital Status", "It's Complex"),
// // // // // // // // //                         buildInfoRow(Icons.work, "Profession", "Product Designer"),
// // // // // // // // //                         buildInfoRow(Icons.email, "Email Address", "info@garvil.com"),
// // // // // // // // //                         buildInfoRow(Icons.phone, "Phone Number", "+92 302 536 3545"),
// // // // // // // // //                       ],
// // // // // // // // //                     ),
// // // // // // // // //                   ),
// // // // // // // // //                   SizedBox(height: 30),

// // // // // // // // //                   // ✅ SETTINGS SECTION
// // // // // // // // //                   Text(
// // // // // // // // //                     "Settings",
// // // // // // // // //                     style: TextStyle(
// // // // // // // // //                       fontWeight: FontWeight.bold,
// // // // // // // // //                       fontSize: 18,
// // // // // // // // //                     ),
// // // // // // // // //                   ),
// // // // // // // // //                   SizedBox(height: 10),

// // // // // // // // //                   // ✨ Edit Profile Button
// // // // // // // // //                   buildButton(context, "Edit Profile", Icons.edit, () {
// // // // // // // // //                     // 👉 Add navigation or logic here
// // // // // // // // //                     ScaffoldMessenger.of(context).showSnackBar(
// // // // // // // // //                       SnackBar(content: Text('Edit Profile clicked')),
// // // // // // // // //                     );
// // // // // // // // //                   }),

// // // // // // // // //                   // ✨ Log Out Button
// // // // // // // // //                   buildButton(context, "Log out", Icons.logout, () {
// // // // // // // // //                     // 👉 Add logout functionality here
// // // // // // // // //                     ScaffoldMessenger.of(context).showSnackBar(
// // // // // // // // //                       SnackBar(content: Text('Logged out')),
// // // // // // // // //                     );
// // // // // // // // //                   }),
// // // // // // // // //                 ],
// // // // // // // // //               ),
// // // // // // // // //             ),
// // // // // // // // //           ],
// // // // // // // // //         ),
// // // // // // // // //       ),
// // // // // // // // //     );
// // // // // // // // //   }

// // // // // // // // //   Widget buildInfoRow(IconData icon, String title, String value) {
// // // // // // // // //     return Padding(
// // // // // // // // //       padding: const EdgeInsets.symmetric(vertical: 8),
// // // // // // // // //       child: Row(
// // // // // // // // //         children: [
// // // // // // // // //           Icon(icon, color: Colors.orange),
// // // // // // // // //           SizedBox(width: 10),
// // // // // // // // //           Expanded(
// // // // // // // // //             child: Text(
// // // // // // // // //               title,
// // // // // // // // //               style: TextStyle(fontSize: 16),
// // // // // // // // //             ),
// // // // // // // // //           ),
// // // // // // // // //           Text(
// // // // // // // // //             value,
// // // // // // // // //             style: TextStyle(
// // // // // // // // //               fontWeight: FontWeight.bold,
// // // // // // // // //               fontSize: 16,
// // // // // // // // //             ),
// // // // // // // // //           ),
// // // // // // // // //         ],
// // // // // // // // //       ),
// // // // // // // // //     );
// // // // // // // // //   }

// // // // // // // // //   Widget buildButton(BuildContext context, String title, IconData icon, VoidCallback onTap) {
// // // // // // // // //     return Container(
// // // // // // // // //       margin: EdgeInsets.symmetric(vertical: 8),
// // // // // // // // //       child: ListTile(
// // // // // // // // //         shape: RoundedRectangleBorder(
// // // // // // // // //           borderRadius: BorderRadius.circular(16),
// // // // // // // // //         ),
// // // // // // // // //         tileColor: Colors.white,
// // // // // // // // //         leading: Icon(icon, color: Colors.black87),
// // // // // // // // //         title: Text(
// // // // // // // // //           title,
// // // // // // // // //           style: TextStyle(
// // // // // // // // //             fontWeight: FontWeight.bold,
// // // // // // // // //             fontSize: 16,
// // // // // // // // //           ),
// // // // // // // // //         ),
// // // // // // // // //         onTap: onTap,
// // // // // // // // //       ),
// // // // // // // // //     );
// // // // // // // // //   }
// // // // // // // // // }

// // // // // // // // import 'package:flutter/material.dart';

// // // // // // // // class ProfileScreen extends StatelessWidget {
// // // // // // // //   @override
// // // // // // // //   Widget build(BuildContext context) {
// // // // // // // //     return Scaffold(
// // // // // // // //       backgroundColor: const Color(0xFFF0F4F8),
// // // // // // // //       body: SingleChildScrollView(
// // // // // // // //         child: Column(
// // // // // // // //           children: [
// // // // // // // //             // Background and Profile Picture
// // // // // // // //             Stack(
// // // // // // // //               clipBehavior: Clip.none,
// // // // // // // //               alignment: Alignment.center,
// // // // // // // //               children: [
// // // // // // // //                 Container(
// // // // // // // //                   height: 220,
// // // // // // // //                   decoration: BoxDecoration(
// // // // // // // //                     image: DecorationImage(
// // // // // // // //                       image: AssetImage('assets/background.jpg'),
// // // // // // // //                       fit: BoxFit.cover,
// // // // // // // //                     ),
// // // // // // // //                   ),
// // // // // // // //                 ),
// // // // // // // //                 Positioned(
// // // // // // // //                   top: 160,
// // // // // // // //                   child: Container(
// // // // // // // //                     padding: EdgeInsets.all(4),
// // // // // // // //                     decoration: BoxDecoration(
// // // // // // // //                       color: Colors.white,
// // // // // // // //                       shape: BoxShape.circle,
// // // // // // // //                       boxShadow: [
// // // // // // // //                         BoxShadow(
// // // // // // // //                           color: Colors.black12,
// // // // // // // //                           blurRadius: 10,
// // // // // // // //                           offset: Offset(0, 4),
// // // // // // // //                         ),
// // // // // // // //                       ],
// // // // // // // //                     ),
// // // // // // // //                     child: CircleAvatar(
// // // // // // // //                       radius: 50,
// // // // // // // //                       backgroundImage: AssetImage('assets/profile.jpg'),
// // // // // // // //                     ),
// // // // // // // //                   ),
// // // // // // // //                 ),
// // // // // // // //               ],
// // // // // // // //             ),
// // // // // // // //             SizedBox(height: 80),

// // // // // // // //             // Personal Info Card
// // // // // // // //             Padding(
// // // // // // // //               padding: const EdgeInsets.symmetric(horizontal: 20),
// // // // // // // //               child: Container(
// // // // // // // //                 padding: const EdgeInsets.all(20),
// // // // // // // //                 decoration: BoxDecoration(
// // // // // // // //                   color: Colors.white,
// // // // // // // //                   borderRadius: BorderRadius.circular(20),
// // // // // // // //                   boxShadow: [
// // // // // // // //                     BoxShadow(
// // // // // // // //                       color: Colors.black12,
// // // // // // // //                       blurRadius: 8,
// // // // // // // //                       offset: Offset(0, 4),
// // // // // // // //                     ),
// // // // // // // //                   ],
// // // // // // // //                 ),
// // // // // // // //                 child: Column(
// // // // // // // //                   crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // // //                   children: [
// // // // // // // //                     Text(
// // // // // // // //                       "Personal Info",
// // // // // // // //                       style: TextStyle(
// // // // // // // //                         fontWeight: FontWeight.bold,
// // // // // // // //                         fontSize: 20,
// // // // // // // //                         color: Colors.black87,
// // // // // // // //                       ),
// // // // // // // //                     ),
// // // // // // // //                     SizedBox(height: 20),
// // // // // // // //                     buildInfoRow(Icons.calendar_today_rounded, "Date of birth", "21 Sep 2001"),
// // // // // // // //                     buildInfoRow(Icons.male_rounded, "Gender", "Male"),
// // // // // // // //                     buildInfoRow(Icons.favorite_outline_rounded, "Marital Status", "It's Complex"),
// // // // // // // //                     buildInfoRow(Icons.work_outline_rounded, "Profession", "Product Designer"),
// // // // // // // //                     buildInfoRow(Icons.email_outlined, "Email Address", "info@garvil.com"),
// // // // // // // //                     buildInfoRow(Icons.phone_outlined, "Phone Number", "+92 302 536 3545"),
// // // // // // // //                   ],
// // // // // // // //                 ),
// // // // // // // //               ),
// // // // // // // //             ),

// // // // // // // //             SizedBox(height: 30),

// // // // // // // //             // Settings
// // // // // // // //             Text(
// // // // // // // //               "Settings",
// // // // // // // //               style: TextStyle(
// // // // // // // //                 fontWeight: FontWeight.bold,
// // // // // // // //                 fontSize: 20,
// // // // // // // //                 color: Colors.black87,
// // // // // // // //               ),
// // // // // // // //             ),

// // // // // // // //             SizedBox(height: 20),

// // // // // // // //             Padding(
// // // // // // // //               padding: const EdgeInsets.symmetric(horizontal: 20),
// // // // // // // //               child: Column(
// // // // // // // //                 children: [
// // // // // // // //                   buildButton(context, "Edit Profile", Icons.edit, () {
// // // // // // // //                     ScaffoldMessenger.of(context).showSnackBar(
// // // // // // // //                       SnackBar(content: Text('Edit Profile clicked')),
// // // // // // // //                     );
// // // // // // // //                   }),
// // // // // // // //                   SizedBox(height: 10),
// // // // // // // //                   buildButton(context, "Log Out", Icons.logout, () {
// // // // // // // //                     ScaffoldMessenger.of(context).showSnackBar(
// // // // // // // //                       SnackBar(content: Text('Logged Out')),
// // // // // // // //                     );
// // // // // // // //                   }),
// // // // // // // //                 ],
// // // // // // // //               ),
// // // // // // // //             ),
// // // // // // // //             SizedBox(height: 30),
// // // // // // // //           ],
// // // // // // // //         ),
// // // // // // // //       ),
// // // // // // // //     );
// // // // // // // //   }

// // // // // // // //   Widget buildInfoRow(IconData icon, String title, String value) {
// // // // // // // //     return Padding(
// // // // // // // //       padding: const EdgeInsets.symmetric(vertical: 10),
// // // // // // // //       child: Row(
// // // // // // // //         children: [
// // // // // // // //           Icon(icon, color: Colors.orange, size: 22),
// // // // // // // //           SizedBox(width: 12),
// // // // // // // //           Expanded(
// // // // // // // //             flex: 3,
// // // // // // // //             child: Text(
// // // // // // // //               title,
// // // // // // // //               style: TextStyle(
// // // // // // // //                 fontSize: 16,
// // // // // // // //                 color: Colors.black87,
// // // // // // // //               ),
// // // // // // // //             ),
// // // // // // // //           ),
// // // // // // // //           Expanded(
// // // // // // // //             flex: 4,
// // // // // // // //             child: Text(
// // // // // // // //               value,
// // // // // // // //               style: TextStyle(
// // // // // // // //                 fontWeight: FontWeight.bold,
// // // // // // // //                 fontSize: 16,
// // // // // // // //                 color: Colors.black87,
// // // // // // // //               ),
// // // // // // // //               textAlign: TextAlign.end,
// // // // // // // //             ),
// // // // // // // //           ),
// // // // // // // //         ],
// // // // // // // //       ),
// // // // // // // //     );
// // // // // // // //   }

// // // // // // // //   Widget buildButton(BuildContext context, String title, IconData icon, VoidCallback onTap) {
// // // // // // // //     return InkWell(
// // // // // // // //       onTap: onTap,
// // // // // // // //       borderRadius: BorderRadius.circular(16),
// // // // // // // //       child: Container(
// // // // // // // //         padding: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
// // // // // // // //         decoration: BoxDecoration(
// // // // // // // //           color: Colors.white,
// // // // // // // //           borderRadius: BorderRadius.circular(16),
// // // // // // // //           boxShadow: [
// // // // // // // //             BoxShadow(
// // // // // // // //               color: Colors.black12,
// // // // // // // //               blurRadius: 6,
// // // // // // // //               offset: Offset(0, 4),
// // // // // // // //             ),
// // // // // // // //           ],
// // // // // // // //         ),
// // // // // // // //         child: Row(
// // // // // // // //           children: [
// // // // // // // //             Icon(icon, color: Colors.black54),
// // // // // // // //             SizedBox(width: 15),
// // // // // // // //             Expanded(
// // // // // // // //               child: Text(
// // // // // // // //                 title,
// // // // // // // //                 style: TextStyle(
// // // // // // // //                   fontWeight: FontWeight.w600,
// // // // // // // //                   fontSize: 16,
// // // // // // // //                   color: Colors.black87,
// // // // // // // //                 ),
// // // // // // // //               ),
// // // // // // // //             ),
// // // // // // // //             Icon(Icons.arrow_forward_ios, size: 16, color: Colors.black38),
// // // // // // // //           ],
// // // // // // // //         ),
// // // // // // // //       ),
// // // // // // // //     );
// // // // // // // //   }
// // // // // // // // }

// // // // // // // import 'package:flutter/material.dart';

// // // // // // // class ProfileScreen extends StatelessWidget {
// // // // // // //   @override
// // // // // // //   Widget build(BuildContext context) {
// // // // // // //     return Scaffold(
// // // // // // //       backgroundColor: Color(0xFFF1F6F9),
// // // // // // //       appBar: AppBar(
// // // // // // //         backgroundColor: Colors.transparent,
// // // // // // //         elevation: 0,
// // // // // // //         centerTitle: true,
// // // // // // //         title: Text(
// // // // // // //           'Profile',
// // // // // // //           style: TextStyle(color: Colors.black87),
// // // // // // //         ),
// // // // // // //         iconTheme: IconThemeData(color: Colors.black87),
// // // // // // //       ),
// // // // // // //       body: SingleChildScrollView(
// // // // // // //         padding: const EdgeInsets.all(20),
// // // // // // //         child: Column(
// // // // // // //           children: [
// // // // // // //             // Profile picture
// // // // // // //             CircleAvatar(
// // // // // // //               radius: 50,
// // // // // // //               backgroundColor: Colors.grey[300],
// // // // // // //               child: Icon(Icons.person, size: 50, color: Colors.white),
// // // // // // //             ),
// // // // // // //             SizedBox(height: 20),

// // // // // // //             // Personal Information Card
// // // // // // //             Container(
// // // // // // //               decoration: BoxDecoration(
// // // // // // //                 color: Colors.white,
// // // // // // //                 borderRadius: BorderRadius.circular(16),
// // // // // // //               ),
// // // // // // //               padding: const EdgeInsets.all(20),
// // // // // // //               child: Column(
// // // // // // //                 crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // //                 children: [
// // // // // // //                   Text(
// // // // // // //                     'Personal Information',
// // // // // // //                     style: TextStyle(
// // // // // // //                       fontWeight: FontWeight.bold,
// // // // // // //                       fontSize: 18,
// // // // // // //                     ),
// // // // // // //                   ),
// // // // // // //                   SizedBox(height: 20),
// // // // // // //                   _buildInfoRow('First Name', 'Khalil'),
// // // // // // //                   SizedBox(height: 15),
// // // // // // //                   _buildInfoRow('Last Name', 'Riahi'),
// // // // // // //                   SizedBox(height: 15),
// // // // // // //                   _buildInfoRow('Email Address', 'khalioz90033@gmail.com'),
// // // // // // //                   SizedBox(height: 15),
// // // // // // //                   _buildInfoRow('Phone', '9496660747'),
// // // // // // //                 ],
// // // // // // //               ),
// // // // // // //             ),

// // // // // // //             SizedBox(height: 20),

// // // // // // //             // Settings Section
// // // // // // //             Text(
// // // // // // //               'Settings',
// // // // // // //               style: TextStyle(
// // // // // // //                 fontSize: 18,
// // // // // // //                 fontWeight: FontWeight.bold,
// // // // // // //               ),
// // // // // // //             ),
// // // // // // //             SizedBox(height: 20),

// // // // // // //             _buildButton(Icons.edit, "Edit Profile", () {
// // // // // // //               // TODO: Go to Edit Profile Page
// // // // // // //             }),
// // // // // // //             SizedBox(height: 10),
// // // // // // //             _buildButton(Icons.logout, "Log out", () {
// // // // // // //               // TODO: Perform logout
// // // // // // //             }),
// // // // // // //           ],
// // // // // // //         ),
// // // // // // //       ),
// // // // // // //     );
// // // // // // //   }

// // // // // // //   Widget _buildInfoRow(String label, String value) {
// // // // // // //     return Row(
// // // // // // //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // // // // // //       children: [
// // // // // // //         Text(
// // // // // // //           label,
// // // // // // //           style: TextStyle(
// // // // // // //             color: Colors.black54,
// // // // // // //             fontWeight: FontWeight.w500,
// // // // // // //           ),
// // // // // // //         ),
// // // // // // //         Expanded(
// // // // // // //           child: Text(
// // // // // // //             value,
// // // // // // //             textAlign: TextAlign.end,
// // // // // // //             style: TextStyle(
// // // // // // //               color: Colors.black87,
// // // // // // //               fontWeight: FontWeight.bold,
// // // // // // //             ),
// // // // // // //           ),
// // // // // // //         ),
// // // // // // //       ],
// // // // // // //     );
// // // // // // //   }

// // // // // // //   Widget _buildButton(IconData icon, String title, VoidCallback onPressed) {
// // // // // // //     return Container(
// // // // // // //       width: double.infinity,
// // // // // // //       child: ElevatedButton.icon(
// // // // // // //         icon: Icon(icon, color: Color(0xFF3C5DF7)),
// // // // // // //         label: Text(
// // // // // // //           title,
// // // // // // //           style: TextStyle(
// // // // // // //             color: Colors.black87,
// // // // // // //             fontWeight: FontWeight.w600,
// // // // // // //           ),
// // // // // // //         ),
// // // // // // //         style: ElevatedButton.styleFrom(
// // // // // // //           backgroundColor: Colors.white,
// // // // // // //           elevation: 0,
// // // // // // //           padding: EdgeInsets.symmetric(vertical: 16),
// // // // // // //           side: BorderSide(color: Colors.grey.shade300),
// // // // // // //           shape: RoundedRectangleBorder(
// // // // // // //             borderRadius: BorderRadius.circular(12),
// // // // // // //           ),
// // // // // // //         ),
// // // // // // //         onPressed: onPressed,
// // // // // // //       ),
// // // // // // //     );
// // // // // // //   }
// // // // // // // }

// // // // // // import 'package:flutter/material.dart';

// // // // // // class ProfileScreen extends StatelessWidget {
// // // // // //   @override
// // // // // //   Widget build(BuildContext context) {
// // // // // //     return Scaffold(
// // // // // //       backgroundColor: Color(0xFFF1F6F9),
// // // // // //       body: SingleChildScrollView(
// // // // // //         child: Column(
// // // // // //           children: [
// // // // // //             // Top background with profile image
// // // // // //             Stack(
// // // // // //               clipBehavior: Clip.none,
// // // // // //               children: [
// // // // // //                 Container(
// // // // // //                   height: 180,
// // // // // //                   width: double.infinity,
// // // // // //                   decoration: BoxDecoration(
// // // // // //                     image: DecorationImage(
// // // // // //                       image: AssetImage('assets/background.jpg'), // ✅ Your background image here
// // // // // //                       fit: BoxFit.cover,
// // // // // //                     ),
// // // // // //                   ),
// // // // // //                 ),
// // // // // //                 Positioned(
// // // // // //                   bottom: -40,
// // // // // //                   left: 0,
// // // // // //                   right: 0,
// // // // // //                   child: Center(
// // // // // //                     child: CircleAvatar(
// // // // // //                       radius: 50,
// // // // // //                       backgroundColor: Colors.white,
// // // // // //                       child: Icon(Icons.person, size: 50, color: Colors.grey),
// // // // // //                     ),
// // // // // //                   ),
// // // // // //                 ),
// // // // // //               ],
// // // // // //             ),
// // // // // //             SizedBox(height: 60),

// // // // // //             // Personal Information Card
// // // // // //             Padding(
// // // // // //               padding: const EdgeInsets.symmetric(horizontal: 16.0),
// // // // // //               child: Column(
// // // // // //                 children: [
// // // // // //                   _buildInfoCard(
// // // // // //                     title: 'Personal Information',
// // // // // //                     children: [
// // // // // //                       _buildInfoRow('First Name', 'Khalil'),
// // // // // //                       _buildInfoRow('Last Name', 'Riahi'),
// // // // // //                       _buildInfoRow('Email Address', 'khalioz90033@gmail.com'),
// // // // // //                       _buildInfoRow('Phone', '9496660747'),
// // // // // //                     ],
// // // // // //                   ),
// // // // // //                   SizedBox(height: 16),
// // // // // //                   _buildInfoCard(
// // // // // //                     title: 'Other Information',
// // // // // //                     children: [
// // // // // //                       _buildInfoRow('Current Subscription ends in', '30 days'),
// // // // // //                       _buildInfoRow('Remaining Points', '0'),
// // // // // //                     ],
// // // // // //                   ),
// // // // // //                   SizedBox(height: 30),

// // // // // //                   // Settings Title
// // // // // //                   Text(
// // // // // //                     'Settings',
// // // // // //                     style: TextStyle(
// // // // // //                       fontWeight: FontWeight.bold,
// // // // // //                       fontSize: 18,
// // // // // //                       color: Colors.black87,
// // // // // //                     ),
// // // // // //                   ),
// // // // // //                   SizedBox(height: 20),

// // // // // //                   // Edit Profile button
// // // // // //                   _buildButton(Icons.edit, 'Edit Profile', () {
// // // // // //                     // TODO: Navigate to Edit Profile
// // // // // //                   }),
// // // // // //                   SizedBox(height: 10),

// // // // // //                   // Logout button
// // // // // //                   _buildButton(Icons.logout, 'Log out', () {
// // // // // //                     // TODO: Handle logout
// // // // // //                   }),
// // // // // //                   SizedBox(height: 30),
// // // // // //                 ],
// // // // // //               ),
// // // // // //             ),
// // // // // //           ],
// // // // // //         ),
// // // // // //       ),
// // // // // //     );
// // // // // //   }

// // // // // //   Widget _buildInfoCard({required String title, required List<Widget> children}) {
// // // // // //     return Container(
// // // // // //       width: double.infinity,
// // // // // //       padding: EdgeInsets.all(20),
// // // // // //       decoration: BoxDecoration(
// // // // // //         color: Colors.white,
// // // // // //         borderRadius: BorderRadius.circular(16),
// // // // // //       ),
// // // // // //       child: Column(
// // // // // //         crossAxisAlignment: CrossAxisAlignment.start,
// // // // // //         children: [
// // // // // //           Text(
// // // // // //             title,
// // // // // //             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
// // // // // //           ),
// // // // // //           SizedBox(height: 20),
// // // // // //           ...children,
// // // // // //         ],
// // // // // //       ),
// // // // // //     );
// // // // // //   }

// // // // // //   Widget _buildInfoRow(String label, String value) {
// // // // // //     return Padding(
// // // // // //       padding: const EdgeInsets.only(bottom: 15.0),
// // // // // //       child: Row(
// // // // // //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // // // // //         children: [
// // // // // //           Text(
// // // // // //             label,
// // // // // //             style: TextStyle(
// // // // // //               color: Colors.black54,
// // // // // //               fontSize: 15,
// // // // // //             ),
// // // // // //           ),
// // // // // //           Expanded(
// // // // // //             child: Text(
// // // // // //               value,
// // // // // //               textAlign: TextAlign.end,
// // // // // //               style: TextStyle(
// // // // // //                 color: Colors.black87,
// // // // // //                 fontWeight: FontWeight.w600,
// // // // // //                 fontSize: 15,
// // // // // //               ),
// // // // // //             ),
// // // // // //           ),
// // // // // //         ],
// // // // // //       ),
// // // // // //     );
// // // // // //   }

// // // // // //   Widget _buildButton(IconData icon, String label, VoidCallback onPressed) {
// // // // // //     return SizedBox(
// // // // // //       width: double.infinity,
// // // // // //       child: ElevatedButton.icon(
// // // // // //         onPressed: onPressed,
// // // // // //         icon: Icon(icon, color: Color(0xFF3C5DF7)),
// // // // // //         label: Text(
// // // // // //           label,
// // // // // //           style: TextStyle(
// // // // // //             color: Colors.black87,
// // // // // //             fontWeight: FontWeight.w600,
// // // // // //           ),
// // // // // //         ),
// // // // // //         style: ElevatedButton.styleFrom(
// // // // // //           backgroundColor: Colors.white,
// // // // // //           elevation: 0,
// // // // // //           padding: EdgeInsets.symmetric(vertical: 16),
// // // // // //           side: BorderSide(color: Colors.grey.shade300),
// // // // // //           shape: RoundedRectangleBorder(
// // // // // //             borderRadius: BorderRadius.circular(12),
// // // // // //           ),
// // // // // //         ),
// // // // // //       ),
// // // // // //     );
// // // // // //   }
// // // // // // }

// // // // // import 'package:flutter/material.dart';
// // // // // import 'sidebar.dart'; // ✅ Make sure you import your sidebar widget

// // // // // class ProfileScreen extends StatelessWidget {
// // // // //   @override
// // // // //   Widget build(BuildContext context) {
// // // // //     return Scaffold(
// // // // //       backgroundColor: Color(0xFFF1F6F9),
// // // // //       drawer: SideBar(), // ✅ Added Sidebar here!
// // // // //       appBar: AppBar(
// // // // //         title: Text('Profile'),
// // // // //         backgroundColor: Colors.transparent,
// // // // //         elevation: 0,
// // // // //         centerTitle: true,
// // // // //         iconTheme: IconThemeData(color: Colors.black87),
// // // // //         titleTextStyle: TextStyle(
// // // // //           color: Colors.black87,
// // // // //           fontWeight: FontWeight.bold,
// // // // //           fontSize: 20,
// // // // //         ),
// // // // //         backgroundColor: Color(0xFFF1F6F9),
// // // // //       ),
// // // // //       body: SingleChildScrollView(
// // // // //         child: Column(
// // // // //           children: [
// // // // //             // Top background with profile image
// // // // //             Stack(
// // // // //               clipBehavior: Clip.none,
// // // // //               children: [
// // // // //                 Container(
// // // // //                   height: 180,
// // // // //                   width: double.infinity,
// // // // //                   decoration: BoxDecoration(
// // // // //                     image: DecorationImage(
// // // // //                       image: AssetImage('assets/background.jpg'),
// // // // //                       fit: BoxFit.cover,
// // // // //                     ),
// // // // //                   ),
// // // // //                 ),
// // // // //                 Positioned(
// // // // //                   bottom: -40,
// // // // //                   left: 0,
// // // // //                   right: 0,
// // // // //                   child: Center(
// // // // //                     child: CircleAvatar(
// // // // //                       radius: 50,
// // // // //                       backgroundColor: Colors.white,
// // // // //                       child: Icon(Icons.person, size: 50, color: Colors.grey),
// // // // //                     ),
// // // // //                   ),
// // // // //                 ),
// // // // //               ],
// // // // //             ),
// // // // //             SizedBox(height: 60),

// // // // //             // Personal Information Card
// // // // //             Padding(
// // // // //               padding: const EdgeInsets.symmetric(horizontal: 16.0),
// // // // //               child: Column(
// // // // //                 children: [
// // // // //                   _buildInfoCard(
// // // // //                     title: 'Personal Information',
// // // // //                     children: [
// // // // //                       _buildInfoRow('First Name', 'Khalil'),
// // // // //                       _buildInfoRow('Last Name', 'Riahi'),
// // // // //                       _buildInfoRow('Email Address', 'khalioz90033@gmail.com'),
// // // // //                       _buildInfoRow('Phone', '9496660747'),
// // // // //                     ],
// // // // //                   ),
// // // // //                   SizedBox(height: 16),
// // // // //                   _buildInfoCard(
// // // // //                     title: 'Other Information',
// // // // //                     children: [
// // // // //                       _buildInfoRow('Current Subscription ends in', '30 days'),
// // // // //                       _buildInfoRow('Remaining Points', '0'),
// // // // //                     ],
// // // // //                   ),
// // // // //                   SizedBox(height: 30),

// // // // //                   // Settings Title
// // // // //                   Text(
// // // // //                     'Settings',
// // // // //                     style: TextStyle(
// // // // //                       fontWeight: FontWeight.bold,
// // // // //                       fontSize: 18,
// // // // //                       color: Colors.black87,
// // // // //                     ),
// // // // //                   ),
// // // // //                   SizedBox(height: 20),

// // // // //                   // Edit Profile button
// // // // //                   _buildButton(Icons.edit, 'Edit Profile', () {
// // // // //                     // TODO: Navigate to Edit Profile
// // // // //                   }),
// // // // //                   SizedBox(height: 10),

// // // // //                   // Logout button
// // // // //                   _buildButton(Icons.logout, 'Log out', () {
// // // // //                     // TODO: Handle logout
// // // // //                   }),
// // // // //                   SizedBox(height: 30),
// // // // //                 ],
// // // // //               ),
// // // // //             ),
// // // // //           ],
// // // // //         ),
// // // // //       ),
// // // // //     );
// // // // //   }

// // // // //   Widget _buildInfoCard({required String title, required List<Widget> children}) {
// // // // //     return Container(
// // // // //       width: double.infinity,
// // // // //       padding: EdgeInsets.all(20),
// // // // //       margin: EdgeInsets.only(bottom: 12),
// // // // //       decoration: BoxDecoration(
// // // // //         color: Colors.white,
// // // // //         borderRadius: BorderRadius.circular(16),
// // // // //         boxShadow: [
// // // // //           BoxShadow(
// // // // //             color: Colors.black12,
// // // // //             blurRadius: 8,
// // // // //             offset: Offset(0, 4),
// // // // //           )
// // // // //         ],
// // // // //       ),
// // // // //       child: Column(
// // // // //         crossAxisAlignment: CrossAxisAlignment.start,
// // // // //         children: [
// // // // //           Text(
// // // // //             title,
// // // // //             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
// // // // //           ),
// // // // //           SizedBox(height: 20),
// // // // //           ...children,
// // // // //         ],
// // // // //       ),
// // // // //     );
// // // // //   }

// // // // //   Widget _buildInfoRow(String label, String value) {
// // // // //     return Padding(
// // // // //       padding: const EdgeInsets.only(bottom: 15.0),
// // // // //       child: Row(
// // // // //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // // // //         children: [
// // // // //           Text(
// // // // //             label,
// // // // //             style: TextStyle(
// // // // //               color: Colors.black54,
// // // // //               fontSize: 15,
// // // // //             ),
// // // // //           ),
// // // // //           Expanded(
// // // // //             child: Text(
// // // // //               value,
// // // // //               textAlign: TextAlign.end,
// // // // //               style: TextStyle(
// // // // //                 color: Colors.black87,
// // // // //                 fontWeight: FontWeight.w600,
// // // // //                 fontSize: 15,
// // // // //               ),
// // // // //             ),
// // // // //           ),
// // // // //         ],
// // // // //       ),
// // // // //     );
// // // // //   }

// // // // //   Widget _buildButton(IconData icon, String label, VoidCallback onPressed) {
// // // // //     return SizedBox(
// // // // //       width: double.infinity,
// // // // //       child: ElevatedButton.icon(
// // // // //         onPressed: onPressed,
// // // // //         icon: Icon(icon, color: Color(0xFF3C5DF7)),
// // // // //         label: Text(
// // // // //           label,
// // // // //           style: TextStyle(
// // // // //             color: Colors.black87,
// // // // //             fontWeight: FontWeight.w600,
// // // // //           ),
// // // // //         ),
// // // // //         style: ElevatedButton.styleFrom(
// // // // //           backgroundColor: Colors.white,
// // // // //           elevation: 0,
// // // // //           padding: EdgeInsets.symmetric(vertical: 16),
// // // // //           side: BorderSide(color: Colors.grey.shade300),
// // // // //           shape: RoundedRectangleBorder(
// // // // //             borderRadius: BorderRadius.circular(12),
// // // // //           ),
// // // // //         ),
// // // // //       ),
// // // // //     );
// // // // //   }
// // // // // }

// // // // import 'package:flutter/material.dart';
// // // // import 'sidebar_screen.dart'; // ✅ Correct import for the sidebar

// // // // class ProfileScreen extends StatelessWidget {
// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return Scaffold(
// // // //       drawer: SidebarScreen(), // ✅ Sidebar connected here
// // // //       appBar: AppBar(
// // // //         title: Text('Profile'),
// // // //         elevation: 0,
// // // //         centerTitle: true,
// // // //         iconTheme: IconThemeData(color: Colors.black87),
// // // //         titleTextStyle: TextStyle(
// // // //           color: Colors.black87,
// // // //           fontWeight: FontWeight.bold,
// // // //           fontSize: 20,
// // // //         ),
// // // //         backgroundColor: Color(0xFFF1F6F9),
// // // //       ),
// // // //       backgroundColor: Color(0xFFF1F6F9),
// // // //       body: SingleChildScrollView(
// // // //         child: Column(
// // // //           children: [
// // // //             // Background Image with Profile Picture
// // // //             Stack(
// // // //   clipBehavior: Clip.none,
// // // //   alignment: Alignment.center,
// // // //   children: [
// // // //     Container(
// // // //       height: 180,
// // // //       width: double.infinity,
// // // //       decoration: BoxDecoration(
// // // //         image: DecorationImage(
// // // //           image: AssetImage('assets/background.jpg'),
// // // //           fit: BoxFit.cover,
// // // //         ),
// // // //       ),
// // // //     ),
// // // //     Positioned(
// // // //       bottom: -50, // 🔥 Pull it down after the background ends
// // // //       child: CircleAvatar(
// // // //         radius: 50,
// // // //         backgroundColor: Colors.white,
// // // //         child: CircleAvatar(
// // // //           radius: 46,
// // // //           backgroundImage: AssetImage('assets/profile_picture.png'),
// // // //         ),
// // // //       ),
// // // //     ),
// // // //   ],
// // // // ),
// // // // SizedBox(height: 60),
// // // //             // Personal Information Card
// // // //             Padding(
// // // //               padding: const EdgeInsets.symmetric(horizontal: 20),
// // // //               child: Container(
// // // //                 padding: EdgeInsets.all(20),
// // // //                 decoration: BoxDecoration(
// // // //                   color: Colors.white,
// // // //                   borderRadius: BorderRadius.circular(15),
// // // //                   boxShadow: [
// // // //                     BoxShadow(
// // // //                       color: Colors.black12,
// // // //                       blurRadius: 6,
// // // //                       offset: Offset(0, 2),
// // // //                     ),
// // // //                   ],
// // // //                 ),
// // // //                 child: Column(
// // // //                   crossAxisAlignment: CrossAxisAlignment.start,
// // // //                   children: [
// // // //                     Text(
// // // //                       "Personal Information",
// // // //                       style: TextStyle(
// // // //                         fontWeight: FontWeight.bold,
// // // //                         fontSize: 18,
// // // //                       ),
// // // //                     ),
// // // //                     SizedBox(height: 20),
// // // //                     _buildInfoRow("First Name", "Khalil"),
// // // //                     _buildInfoRow("Last Name", "Riahi"),
// // // //                     _buildInfoRow("Email Address", "khaliloz90033@gmail.com"),
// // // //                     _buildInfoRow("Phone", "9496660747"),
// // // //                   ],
// // // //                 ),
// // // //               ),
// // // //             ),
// // // //             SizedBox(height: 20),
// // // //             // Other Information Card
// // // //             Padding(
// // // //               padding: const EdgeInsets.symmetric(horizontal: 20),
// // // //               child: Container(
// // // //                 padding: EdgeInsets.all(20),
// // // //                 decoration: BoxDecoration(
// // // //                   color: Colors.white,
// // // //                   borderRadius: BorderRadius.circular(15),
// // // //                   boxShadow: [
// // // //                     BoxShadow(
// // // //                       color: Colors.black12,
// // // //                       blurRadius: 6,
// // // //                       offset: Offset(0, 2),
// // // //                     ),
// // // //                   ],
// // // //                 ),
// // // //                 child: Column(
// // // //                   crossAxisAlignment: CrossAxisAlignment.start,
// // // //                   children: [
// // // //                     Text(
// // // //                       "Other Information",
// // // //                       style: TextStyle(
// // // //                         fontWeight: FontWeight.bold,
// // // //                         fontSize: 18,
// // // //                       ),
// // // //                     ),
// // // //                     SizedBox(height: 20),
// // // //                     _buildInfoRow("Current Subscription ends in", "30 days"),
// // // //                     _buildInfoRow("Remaining Points", "0"),
// // // //                   ],
// // // //                 ),
// // // //               ),
// // // //             ),
// // // //             SizedBox(height: 30),
// // // //             // Settings Section
// // // //             Text(
// // // //               "Settings",
// // // //               style: TextStyle(
// // // //                 fontWeight: FontWeight.bold,
// // // //                 fontSize: 20,
// // // //               ),
// // // //             ),
// // // //             SizedBox(height: 20),
// // // //             Padding(
// // // //               padding: const EdgeInsets.symmetric(horizontal: 20),
// // // //               child: Column(
// // // //                 children: [
// // // //                   _buildSettingsButton(
// // // //                     icon: Icons.edit,
// // // //                     label: "Edit Profile",
// // // //                     onPressed: () {
// // // //                       // 👇 Add navigation to edit profile screen later
// // // //                       ScaffoldMessenger.of(context).showSnackBar(
// // // //                         SnackBar(content: Text('Edit Profile clicked')),
// // // //                       );
// // // //                     },
// // // //                   ),
// // // //                   SizedBox(height: 10),
// // // //                   _buildSettingsButton(
// // // //                     icon: Icons.logout,
// // // //                     label: "Log out",
// // // //                     onPressed: () {
// // // //                       // 👇 Add logout logic here
// // // //                       ScaffoldMessenger.of(context).showSnackBar(
// // // //                         SnackBar(content: Text('Log out clicked')),
// // // //                       );
// // // //                     },
// // // //                   ),
// // // //                 ],
// // // //               ),
// // // //             ),
// // // //             SizedBox(height: 30),
// // // //           ],
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }

// // // //   Widget _buildInfoRow(String title, String value) {
// // // //     return Padding(
// // // //       padding: const EdgeInsets.symmetric(vertical: 6),
// // // //       child: Row(
// // // //         children: [
// // // //           Expanded(
// // // //             flex: 3,
// // // //             child: Text(
// // // //               title,
// // // //               style: TextStyle(color: Colors.grey),
// // // //             ),
// // // //           ),
// // // //           Expanded(
// // // //             flex: 4,
// // // //             child: Text(
// // // //               value,
// // // //               style: TextStyle(
// // // //                 fontWeight: FontWeight.bold,
// // // //               ),
// // // //               textAlign: TextAlign.right,
// // // //             ),
// // // //           ),
// // // //         ],
// // // //       ),
// // // //     );
// // // //   }

// // // //   Widget _buildSettingsButton({
// // // //     required IconData icon,
// // // //     required String label,
// // // //     required VoidCallback onPressed,
// // // //   }) {
// // // //     return ElevatedButton.icon(
// // // //       style: ElevatedButton.styleFrom(
// // // //         backgroundColor: Colors.white,
// // // //         foregroundColor: Colors.black87,
// // // //         minimumSize: Size(double.infinity, 55),
// // // //         elevation: 2,
// // // //         shape: RoundedRectangleBorder(
// // // //           borderRadius: BorderRadius.circular(12),
// // // //         ),
// // // //       ),
// // // //       icon: Icon(icon, color: Color(0xFF3C5DF7)),
// // // //       label: Text(
// // // //         label,
// // // //         style: TextStyle(
// // // //           fontWeight: FontWeight.bold,
// // // //         ),
// // // //       ),
// // // //       onPressed: onPressed,
// // // //     );
// // // //   }
// // // // }

// // // import 'package:flutter/material.dart';

// // // class ProfileScreen extends StatelessWidget {
// // //   const ProfileScreen({Key? key}) : super(key: key);

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       backgroundColor: Colors.white,
// // //       body: SafeArea(
// // //         child: SingleChildScrollView(
// // //           child: Padding(
// // //             padding: const EdgeInsets.all(16.0),
// // //             child: Column(
// // //               children: [
// // //                 const SizedBox(height: 20),
// // //                 // Profile photo
// // //                 Center(
// // //                   child: CircleAvatar(
// // //                     radius: 70,
// // //                     backgroundColor: Colors.grey[200],
// // //                     child: const Icon(
// // //                       Icons.person,
// // //                       size: 70,
// // //                       color: Colors.black54,
// // //                     ),
// // //                   ),
// // //                 ),
// // //                 const SizedBox(height: 24),
// // //                 // Name
// // //                 const Text(
// // //                   'Michael Harris',
// // //                   style: TextStyle(
// // //                     fontSize: 32,
// // //                     fontWeight: FontWeight.bold,
// // //                   ),
// // //                 ),
// // //                 const SizedBox(height: 30),
// // //                 // Info card
// // //                 Container(
// // //                   decoration: BoxDecoration(
// // //                     border: Border.all(color: Colors.grey[300]!),
// // //                     borderRadius: BorderRadius.circular(16),
// // //                   ),
// // //                   child: Column(
// // //                     children: [
// // //                       _buildInfoRow(
// // //                           Icons.person, 'Full Name', 'Michael Harris'),
// // //                       _buildDivider(),
// // //                       _buildInfoRow(
// // //                           Icons.phone, 'Phone Number', '+1 202 555 0123'),
// // //                       _buildDivider(),
// // //                       _buildInfoRow(
// // //                           Icons.email, 'Email', 'michael@example.com'),
// // //                       _buildDivider(),
// // //                       _buildInfoRow(Icons.add_circle_outline,
// // //                           'Current Subscription', 'Ends on 20/09'),
// // //                       _buildDivider(),
// // //                       _buildInfoRow(
// // //                           Icons.circle_outlined, 'Remaining Points', '120',
// // //                           isBlue: true),
// // //                     ],
// // //                   ),
// // //                 ),
// // //                 const SizedBox(height: 24),
// // //                 // Edit profile button
// // //                 Container(
// // //                   width: double.infinity,
// // //                   decoration: BoxDecoration(
// // //                     border: Border.all(color: Colors.grey[300]!),
// // //                     borderRadius: BorderRadius.circular(16),
// // //                   ),
// // //                   child: TextButton(
// // //                     onPressed: () {},
// // //                     style: TextButton.styleFrom(
// // //                       padding: const EdgeInsets.symmetric(vertical: 16),
// // //                     ),
// // //                     child: const Text(
// // //                       'Edit Profile',
// // //                       style: TextStyle(
// // //                         fontSize: 20,
// // //                         fontWeight: FontWeight.w500,
// // //                         color: Colors.black,
// // //                       ),
// // //                     ),
// // //                   ),
// // //                 ),
// // //               ],
// // //             ),
// // //           ),
// // //         ),
// // //       ),
// // //     );
// // //   }

// // //   Widget _buildInfoRow(IconData icon, String label, String value,
// // //       {bool isBlue = false}) {
// // //     return Padding(
// // //       padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
// // //       child: Row(
// // //         children: [
// // //           Icon(
// // //             icon,
// // //             size: 26,
// // //             color: Colors.grey[600],
// // //           ),
// // //           const SizedBox(width: 16),
// // //           Text(
// // //             label,
// // //             style: TextStyle(
// // //               fontSize: 18,
// // //               fontWeight: FontWeight.w500,
// // //               color: Colors.grey[800],
// // //             ),
// // //           ),
// // //           const Spacer(),
// // //           Text(
// // //             value,
// // //             style: TextStyle(
// // //               fontSize: 18,
// // //               fontWeight: FontWeight.w500,
// // //               color: isBlue ? Colors.blue : Colors.black,
// // //             ),
// // //           ),
// // //         ],
// // //       ),
// // //     );
// // //   }

// // //   Widget _buildDivider() {
// // //     return Divider(
// // //       height: 1,
// // //       thickness: 1,
// // //       color: Colors.grey[300],
// // //     );
// // //   }
// // // }

// // import 'package:flutter/material.dart';

// // class ProfileScreen extends StatelessWidget {
// //   const ProfileScreen({Key? key}) : super(key: key);

// //   // ELACO brand colors
// //   static const Color elacoTeal = Color(0xFF1ECCC2);
// //   static const Color elacoBlack = Color(0xFF1A1A1A);
// //   static const Color backgroundGrey = Color(0xFFF8F9FA);
// //   static const Color cardWhite = Colors.white;
// //   static const Color textDark = Color(0xFF333333);
// //   static const Color textLight = Color(0xFF767676);

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: backgroundGrey,
// //       appBar: AppBar(
// //         backgroundColor: Colors.transparent,
// //         elevation: 0,
// //         actions: [
// //           IconButton(
// //             icon: const Icon(Icons.settings_outlined, color: elacoBlack),
// //             onPressed: () {},
// //           ),
// //         ],
// //       ),
// //       body: SafeArea(
// //         child: SingleChildScrollView(
// //           child: Padding(
// //             padding: const EdgeInsets.symmetric(horizontal: 20.0),
// //             child: Column(
// //               crossAxisAlignment: CrossAxisAlignment.start,
// //               children: [
// //                 // Profile section
// //                 Center(
// //                   child: Column(
// //                     children: [
// //                       Container(
// //                         decoration: BoxDecoration(
// //                           shape: BoxShape.circle,
// //                           boxShadow: [
// //                             BoxShadow(
// //                               color: Colors.black.withOpacity(0.1),
// //                               blurRadius: 15,
// //                               offset: const Offset(0, 5),
// //                             ),
// //                           ],
// //                         ),
// //                         child: CircleAvatar(
// //                           radius: 60,
// //                           backgroundColor: cardWhite,
// //                           backgroundImage: const NetworkImage(
// //                             'https://tinyurl.com/placeholder-image', // replace with actual image
// //                           ),
// //                         ),
// //                       ),
// //                       const SizedBox(height: 16),
// //                       const Text(
// //                         'Michael Harris',
// //                         style: TextStyle(
// //                           fontSize: 28,
// //                           fontWeight: FontWeight.bold,
// //                           color: elacoBlack,
// //                           letterSpacing: 0.3,
// //                         ),
// //                       ),
// //                       const SizedBox(height: 4),
// //                       Container(
// //                         padding: const EdgeInsets.symmetric(
// //                             horizontal: 12, vertical: 6),
// //                         decoration: BoxDecoration(
// //                           color: elacoTeal.withOpacity(0.1),
// //                           borderRadius: BorderRadius.circular(20),
// //                         ),
// //                         child: const Row(
// //                           mainAxisSize: MainAxisSize.min,
// //                           children: [
// //                             Icon(Icons.star, size: 16, color: elacoTeal),
// //                             SizedBox(width: 4),
// //                             Text(
// //                               'Premium Member',
// //                               style: TextStyle(
// //                                 color: elacoTeal,
// //                                 fontWeight: FontWeight.w500,
// //                               ),
// //                             ),
// //                           ],
// //                         ),
// //                       ),
// //                     ],
// //                   ),
// //                 ),

// //                 const SizedBox(height: 32),

// //                 // Info cards section
// //                 const Text(
// //                   'Personal Information',
// //                   style: TextStyle(
// //                     fontSize: 18,
// //                     fontWeight: FontWeight.bold,
// //                     color: elacoBlack,
// //                   ),
// //                 ),
// //                 const SizedBox(height: 16),

// //                 // Cards for personal info
// //                 _buildInfoCard(
// //                   icon: Icons.person_outline,
// //                   title: 'Full Name',
// //                   value: 'Michael Harris',
// //                 ),
// //                 _buildInfoCard(
// //                   icon: Icons.phone_outlined,
// //                   title: 'Phone Number',
// //                   value: '+1 202 555 0123',
// //                 ),
// //                 _buildInfoCard(
// //                   icon: Icons.email_outlined,
// //                   title: 'Email',
// //                   value: 'michael@example.com',
// //                 ),

// //                 const SizedBox(height: 24),

// //                 // Membership section
// //                 const Text(
// //                   'Membership',
// //                   style: TextStyle(
// //                     fontSize: 18,
// //                     fontWeight: FontWeight.bold,
// //                     color: elacoBlack,
// //                   ),
// //                 ),
// //                 const SizedBox(height: 16),

// //                 // Subscription card
// //                 Container(
// //                   decoration: BoxDecoration(
// //                     color: cardWhite,
// //                     borderRadius: BorderRadius.circular(16),
// //                     boxShadow: [
// //                       BoxShadow(
// //                         color: Colors.black.withOpacity(0.05),
// //                         blurRadius: 10,
// //                         offset: const Offset(0, 4),
// //                       ),
// //                     ],
// //                   ),
// //                   child: Padding(
// //                     padding: const EdgeInsets.all(20.0),
// //                     child: Column(
// //                       children: [
// //                         Row(
// //                           children: [
// //                             Container(
// //                               padding: const EdgeInsets.all(10),
// //                               decoration: BoxDecoration(
// //                                 color: elacoTeal.withOpacity(0.1),
// //                                 borderRadius: BorderRadius.circular(12),
// //                               ),
// //                               child: const Icon(
// //                                 Icons.calendar_today_outlined,
// //                                 color: elacoTeal,
// //                                 size: 24,
// //                               ),
// //                             ),
// //                             const SizedBox(width: 16),
// //                             const Expanded(
// //                               child: Column(
// //                                 crossAxisAlignment: CrossAxisAlignment.start,
// //                                 children: [
// //                                   Text(
// //                                     'Current Subscription',
// //                                     style: TextStyle(
// //                                       fontSize: 16,
// //                                       color: textLight,
// //                                     ),
// //                                   ),
// //                                   SizedBox(height: 4),
// //                                   Text(
// //                                     'Ends on 20/09',
// //                                     style: TextStyle(
// //                                       fontSize: 18,
// //                                       fontWeight: FontWeight.w600,
// //                                       color: textDark,
// //                                     ),
// //                                   ),
// //                                 ],
// //                               ),
// //                             ),
// //                             Container(
// //                               padding: const EdgeInsets.symmetric(
// //                                   horizontal: 12, vertical: 6),
// //                               decoration: BoxDecoration(
// //                                 color: elacoTeal.withOpacity(0.1),
// //                                 borderRadius: BorderRadius.circular(8),
// //                               ),
// //                               child: const Text(
// //                                 'Active',
// //                                 style: TextStyle(
// //                                   color: elacoTeal,
// //                                   fontWeight: FontWeight.w600,
// //                                 ),
// //                               ),
// //                             ),
// //                           ],
// //                         ),
// //                         const SizedBox(height: 20),
// //                         const Divider(height: 1),
// //                         const SizedBox(height: 20),
// //                         Row(
// //                           children: [
// //                             Container(
// //                               padding: const EdgeInsets.all(10),
// //                               decoration: BoxDecoration(
// //                                 color: elacoTeal.withOpacity(0.1),
// //                                 borderRadius: BorderRadius.circular(12),
// //                               ),
// //                               child: const Icon(
// //                                 Icons.workspace_premium_outlined,
// //                                 color: elacoTeal,
// //                                 size: 24,
// //                               ),
// //                             ),
// //                             const SizedBox(width: 16),
// //                             const Expanded(
// //                               child: Column(
// //                                 crossAxisAlignment: CrossAxisAlignment.start,
// //                                 children: [
// //                                   Text(
// //                                     'Remaining Points',
// //                                     style: TextStyle(
// //                                       fontSize: 16,
// //                                       color: textLight,
// //                                     ),
// //                                   ),
// //                                   SizedBox(height: 4),
// //                                   Text(
// //                                     '120',
// //                                     style: TextStyle(
// //                                       fontSize: 18,
// //                                       fontWeight: FontWeight.w600,
// //                                       color: elacoTeal,
// //                                     ),
// //                                   ),
// //                                 ],
// //                               ),
// //                             ),
// //                             TextButton(
// //                               onPressed: () {},
// //                               style: TextButton.styleFrom(
// //                                 padding: const EdgeInsets.symmetric(
// //                                     horizontal: 16, vertical: 8),
// //                                 shape: RoundedRectangleBorder(
// //                                   borderRadius: BorderRadius.circular(8),
// //                                 ),
// //                               ),
// //                               child: const Text(
// //                                 'Use Points',
// //                                 style: TextStyle(
// //                                   color: elacoTeal,
// //                                   fontWeight: FontWeight.w600,
// //                                 ),
// //                               ),
// //                             ),
// //                           ],
// //                         ),
// //                       ],
// //                     ),
// //                   ),
// //                 ),

// //                 const SizedBox(height: 32),

// //                 // Edit Profile Button
// //                 ElevatedButton(
// //                   onPressed: () {},
// //                   style: ElevatedButton.styleFrom(
// //                     backgroundColor: elacoTeal,
// //                     foregroundColor: Colors.white,
// //                     padding: const EdgeInsets.symmetric(vertical: 16),
// //                     shape: RoundedRectangleBorder(
// //                       borderRadius: BorderRadius.circular(16),
// //                     ),
// //                     elevation: 0,
// //                     minimumSize: const Size(double.infinity, 56),
// //                   ),
// //                   child: const Text(
// //                     'Edit Profile',
// //                     style: TextStyle(
// //                       fontSize: 18,
// //                       fontWeight: FontWeight.w600,
// //                     ),
// //                   ),
// //                 ),

// //                 const SizedBox(height: 32),
// //               ],
// //             ),
// //           ),
// //         ),
// //       ),
// //     );
// //   }

// //   Widget _buildInfoCard({
// //     required IconData icon,
// //     required String title,
// //     required String value,
// //   }) {
// //     return Container(
// //       margin: const EdgeInsets.only(bottom: 12),
// //       decoration: BoxDecoration(
// //         color: cardWhite,
// //         borderRadius: BorderRadius.circular(16),
// //         boxShadow: [
// //           BoxShadow(
// //             color: Colors.black.withOpacity(0.05),
// //             blurRadius: 10,
// //             offset: const Offset(0, 4),
// //           ),
// //         ],
// //       ),
// //       child: Padding(
// //         padding: const EdgeInsets.all(16.0),
// //         child: Row(
// //           children: [
// //             Container(
// //               padding: const EdgeInsets.all(10),
// //               decoration: BoxDecoration(
// //                 color: elacoTeal.withOpacity(0.1),
// //                 borderRadius: BorderRadius.circular(12),
// //               ),
// //               child: Icon(
// //                 icon,
// //                 color: elacoTeal,
// //                 size: 24,
// //               ),
// //             ),
// //             const SizedBox(width: 16),
// //             Column(
// //               crossAxisAlignment: CrossAxisAlignment.start,
// //               children: [
// //                 Text(
// //                   title,
// //                   style: const TextStyle(
// //                     fontSize: 14,
// //                     color: textLight,
// //                   ),
// //                 ),
// //                 const SizedBox(height: 4),
// //                 Text(
// //                   value,
// //                   style: const TextStyle(
// //                     fontSize: 16,
// //                     fontWeight: FontWeight.w500,
// //                     color: textDark,
// //                   ),
// //                 ),
// //               ],
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }


// import 'package:flutter/material.dart';

// class ProfileScreen extends StatelessWidget {
//   const ProfileScreen({Key? key}) : super(key: key);

//   // ELACO brand colors
//   static const Color elacoTeal = Color(0xFF1ECCC2);
//   static const Color elacoBlack = Color(0xFF1A1A1A);
//   static const Color backgroundGrey = Color(0xFFF8F9FA);
//   static const Color cardWhite = Colors.white;
//   static const Color textDark = Color(0xFF333333);
//   static const Color textLight = Color(0xFF767676);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: backgroundGrey,
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         title: const Text(
//           'Profile',
//           style: TextStyle(
//             color: elacoBlack,
//             fontWeight: FontWeight.bold,
//             fontSize: 20,
//           ),
//         ),
//         centerTitle: true,
//         iconTheme: const IconThemeData(color: elacoBlack),
//       ),
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 // Profile section
//                 Center(
//                   child: Column(
//                     children: [
//                       Container(
//                         decoration: BoxDecoration(
//                           shape: BoxShape.circle,
//                           boxShadow: [
//                             BoxShadow(
//                               color: Colors.black.withOpacity(0.1),
//                               blurRadius: 15,
//                               offset: const Offset(0, 5),
//                             ),
//                           ],
//                         ),
//                         child: const CircleAvatar(
//                           radius: 60,
//                           backgroundColor: cardWhite,
//                           backgroundImage: NetworkImage(
//                             'https://tinyurl.com/placeholder-image',
//                           ),
//                         ),
//                       ),
//                       const SizedBox(height: 16),
//                       const Text(
//                         'Michael Harris',
//                         style: TextStyle(
//                           fontSize: 28,
//                           fontWeight: FontWeight.bold,
//                           color: elacoBlack,
//                           letterSpacing: 0.3,
//                         ),
//                       ),
//                       const SizedBox(height: 4),
//                       Container(
//                         padding: const EdgeInsets.symmetric(
//                             horizontal: 12, vertical: 6),
//                         decoration: BoxDecoration(
//                           color: Colors.grey.withOpacity(0.1),
//                           borderRadius: BorderRadius.circular(20),
//                         ),
//                         child: const Row(
//                           mainAxisSize: MainAxisSize.min,
//                           children: [
//                             Icon(Icons.star, size: 16, color: Colors.grey),
//                             SizedBox(width: 4),
//                             Text(
//                               'Premium Member',
//                               style: TextStyle(
//                                 color: Colors.grey,
//                                 fontWeight: FontWeight.w500,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),

//                 const SizedBox(height: 32),

//                 const Text(
//                   'Personal Information',
//                   style: TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                     color: elacoBlack,
//                   ),
//                 ),
//                 const SizedBox(height: 16),

//                 _buildInfoCard(
//                   icon: Icons.person_outline,
//                   title: 'Full Name',
//                   value: 'Michael Harris',
//                 ),
//                 _buildInfoCard(
//                   icon: Icons.phone_outlined,
//                   title: 'Phone Number',
//                   value: '+1 202 555 0123',
//                 ),
//                 _buildInfoCard(
//                   icon: Icons.email_outlined,
//                   title: 'Email',
//                   value: 'michael@example.com',
//                 ),

//                 const SizedBox(height: 24),

//                 const Text(
//                   'Membership',
//                   style: TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                     color: elacoBlack,
//                   ),
//                 ),
//                 const SizedBox(height: 16),

//                 Container(
//                   decoration: BoxDecoration(
//                     color: cardWhite,
//                     borderRadius: BorderRadius.circular(16),
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.black.withOpacity(0.05),
//                         blurRadius: 10,
//                         offset: const Offset(0, 4),
//                       ),
//                     ],
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.all(20.0),
//                     child: Column(
//                       children: [
//                         Row(
//                           children: [
//                             Container(
//                               padding: const EdgeInsets.all(10),
//                               decoration: BoxDecoration(
//                                 color: Colors.grey.withOpacity(0.1),
//                                 borderRadius: BorderRadius.circular(12),
//                               ),
//                               child: const Icon(
//                                 Icons.calendar_today_outlined,
//                                 color: Colors.grey,
//                                 size: 24,
//                               ),
//                             ),
//                             const SizedBox(width: 16),
//                             const Expanded(
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Text(
//                                     'Current Subscription',
//                                     style: TextStyle(
//                                       fontSize: 16,
//                                       color: textLight,
//                                     ),
//                                   ),
//                                   SizedBox(height: 4),
//                                   Text(
//                                     'Ends on 20/09',
//                                     style: TextStyle(
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.w600,
//                                       color: textDark,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             Container(
//                               padding: const EdgeInsets.symmetric(
//                                   horizontal: 12, vertical: 6),
//                               decoration: BoxDecoration(
//                                 color: Colors.grey.withOpacity(0.1),
//                                 borderRadius: BorderRadius.circular(8),
//                               ),
//                               child: const Text(
//                                 'Active',
//                                 style: TextStyle(
//                                   color: Colors.grey,
//                                   fontWeight: FontWeight.w600,
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                         const SizedBox(height: 20),
//                         const Divider(height: 1),
//                         const SizedBox(height: 20),
//                         Row(
//                           children: [
//                             Container(
//                               padding: const EdgeInsets.all(10),
//                               decoration: BoxDecoration(
//                                 color: Colors.grey.withOpacity(0.1),
//                                 borderRadius: BorderRadius.circular(12),
//                               ),
//                               child: const Icon(
//                                 Icons.workspace_premium_outlined,
//                                 color: Colors.grey,
//                                 size: 24,
//                               ),
//                             ),
//                             const SizedBox(width: 16),
//                             const Expanded(
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Text(
//                                     'Remaining Points',
//                                     style: TextStyle(
//                                       fontSize: 16,
//                                       color: textLight,
//                                     ),
//                                   ),
//                                   SizedBox(height: 4),
//                                   Text(
//                                     '120',
//                                     style: TextStyle(
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.w600,
//                                       color: elacoTeal,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             TextButton(
//                               onPressed: () {},
//                               style: TextButton.styleFrom(
//                                 padding: const EdgeInsets.symmetric(
//                                     horizontal: 16, vertical: 8),
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(8),
//                                 ),
//                               ),
//                               child: const Text(
//                                 'Use Points',
//                                 style: TextStyle(
//                                   color: Colors.grey,
//                                   fontWeight: FontWeight.w600,
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),

//                 const SizedBox(height: 32),

//                 // Edit Profile Button (teal)
//                 ElevatedButton(
//                   onPressed: () {},
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: elacoTeal,
//                     foregroundColor: Colors.white,
//                     padding: const EdgeInsets.symmetric(vertical: 16),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(16),
//                     ),
//                     elevation: 0,
//                     minimumSize: const Size(double.infinity, 56),
//                   ),
//                   child: const Text(
//                     'Edit Profile',
//                     style: TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                 ),

//                 const SizedBox(height: 32),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildInfoCard({
//     required IconData icon,
//     required String title,
//     required String value,
//   }) {
//     return Container(
//       margin: const EdgeInsets.only(bottom: 12),
//       decoration: BoxDecoration(
//         color: cardWhite,
//         borderRadius: BorderRadius.circular(16),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.05),
//             blurRadius: 10,
//             offset: const Offset(0, 4),
//           ),
//         ],
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Row(
//           children: [
//             Container(
//               padding: const EdgeInsets.all(10),
//               decoration: BoxDecoration(
//                 color: Colors.grey.withOpacity(0.1),
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               child: Icon(
//                 icon,
//                 color: Colors.grey,
//                 size: 24,
//               ),
//             ),
//             const SizedBox(width: 16),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   title,
//                   style: const TextStyle(
//                     fontSize: 14,
//                     color: textLight,
//                   ),
//                 ),
//                 const SizedBox(height: 4),
//                 Text(
//                   value,
//                   style: const TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.w500,
//                     color: textDark,
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'sidebar_screen.dart'; // ✅ Import the sidebar

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  static const Color elacoTeal = Color(0xFF1ECCC2);
  static const Color elacoBlack = Color(0xFF1A1A1A);
  static const Color backgroundGrey = Color(0xFFF8F9FA);
  static const Color cardWhite = Colors.white;
  static const Color textDark = Color(0xFF333333);
  static const Color textLight = Color(0xFF767676);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SidebarScreen(), // ✅ Sidebar added here
      backgroundColor: backgroundGrey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Profile',
          style: TextStyle(
            color: elacoBlack,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: elacoBlack),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 15,
                              offset: const Offset(0, 5),
                            ),
                          ],
                        ),
                        child: const CircleAvatar(
                          radius: 60,
                          backgroundColor: cardWhite,
                          backgroundImage: NetworkImage(
                            'https://tinyurl.com/placeholder-image',
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'Michael Harris',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: elacoBlack,
                          letterSpacing: 0.3,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 6),
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.star, size: 16, color: Colors.grey),
                            SizedBox(width: 4),
                            Text(
                              'Premium Member',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 32),

                const Text(
                  'Personal Information',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: elacoBlack,
                  ),
                ),
                const SizedBox(height: 16),

                _buildInfoCard(
                  icon: Icons.person_outline,
                  title: 'Full Name',
                  value: 'Michael Harris',
                ),
                _buildInfoCard(
                  icon: Icons.phone_outlined,
                  title: 'Phone Number',
                  value: '+1 202 555 0123',
                ),
                _buildInfoCard(
                  icon: Icons.email_outlined,
                  title: 'Email',
                  value: 'michael@example.com',
                ),

                const SizedBox(height: 24),

                const Text(
                  'Membership',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: elacoBlack,
                  ),
                ),
                const SizedBox(height: 16),

                Container(
                  decoration: BoxDecoration(
                    color: cardWhite,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: const Icon(
                                Icons.calendar_today_outlined,
                                color: Colors.grey,
                                size: 24,
                              ),
                            ),
                            const SizedBox(width: 16),
                            const Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Current Subscription',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: textLight,
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    'Ends on 20/09',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: textDark,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 6),
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Text(
                                'Active',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        const Divider(height: 1),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: const Icon(
                                Icons.workspace_premium_outlined,
                                color: Colors.grey,
                                size: 24,
                              ),
                            ),
                            const SizedBox(width: 16),
                            const Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Remaining Points',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: textLight,
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    '120',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: elacoTeal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 8),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child: const Text(
                                'Use Points',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 32),

                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: elacoTeal,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    elevation: 0,
                    minimumSize: const Size(double.infinity, 56),
                  ),
                  child: const Text(
                    'Edit Profile',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),

                const SizedBox(height: 32),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildInfoCard({
    required IconData icon,
    required String title,
    required String value,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: cardWhite,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(
                icon,
                color: Colors.grey,
                size: 24,
              ),
            ),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 14,
                    color: textLight,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  value,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: textDark,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
