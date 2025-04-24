// // // // // // // // import 'package:flutter/material.dart';
// // // // // // // // // import 'package:your_app/services/user_service.dart'; // 👈 Make sure you import your service
// // // // // // // // // import 'package:your_app/screens/web_view_screen.dart';

// // // // // // // // import 'services/notification_service.dart';
// // // // // // // // import 'services/user_service.dart';
// // // // // // // // import 'web_view_screen.dart'; // 👈 Your WebView screen

// // // // // // // // class BuyPoints extends StatefulWidget {
// // // // // // // //   @override
// // // // // // // //   _BuyPointsState createState() => _BuyPointsState();
// // // // // // // // }

// // // // // // // // class _BuyPointsState extends State<BuyPoints> {
// // // // // // // //   final TextEditingController _pointsController =
// // // // // // // //       TextEditingController(text: '20');
// // // // // // // //   double _totalPrice = 30.0; // 20 * 1.5 initially

// // // // // // // //   void _updatePrice() {
// // // // // // // //     final points = double.tryParse(_pointsController.text) ?? 0;
// // // // // // // //     setState(() {
// // // // // // // //       _totalPrice = points * 1.5;
// // // // // // // //     });
// // // // // // // //   }

// // // // // // // //   @override
// // // // // // // //   void initState() {
// // // // // // // //     super.initState();
// // // // // // // //     _pointsController.addListener(_updatePrice);
// // // // // // // //   }

// // // // // // // //   @override
// // // // // // // //   void dispose() {
// // // // // // // //     _pointsController.dispose();
// // // // // // // //     super.dispose();
// // // // // // // //   }

// // // // // // // //   Future<void> _payOnline() async {
// // // // // // // //     final points = double.tryParse(_pointsController.text) ?? 0;

// // // // // // // //     if (points == 0) {
// // // // // // // //       ScaffoldMessenger.of(context).showSnackBar(
// // // // // // // //         SnackBar(content: Text('Please enter valid points')),
// // // // // // // //       );
// // // // // // // //       return;
// // // // // // // //     }

// // // // // // // //     final result = await UserService.getCheckoutSession(
// // // // // // // //       amount: _totalPrice,
// // // // // // // //       // description: "Buying $points points",
// // // // // // // //       userId:
// // // // // // // //           "68061fe32ad4c790b10a13d6", // 👉 Replace this with your real logged-in user ID
// // // // // // // //       points: points.toInt(),
// // // // // // // //     );

// // // // // // // //     print(result);
// // // // // // // //     if (result != null && result['payUrl'] != null) {
// // // // // // // //       final String redirectUrl = result['payUrl'];
// // // // // // // //       print("redirect URL");
// // // // // // // //       print(redirectUrl);
// // // // // // // //       Navigator.push(
// // // // // // // //         context,
// // // // // // // //         MaterialPageRoute(
// // // // // // // //           builder: (context) => WebViewScreen(payUrl: redirectUrl),
// // // // // // // //         ),
// // // // // // // //       );
// // // // // // // //     } else {
// // // // // // // //       print("error");
// // // // // // // //       ScaffoldMessenger.of(context).showSnackBar(
// // // // // // // //         SnackBar(content: Text('Failed to start payment session')),
// // // // // // // //       );
// // // // // // // //     }
// // // // // // // //   }

// // // // // // // //   @override
// // // // // // // //   Widget build(BuildContext context) {
// // // // // // // //     return Scaffold(
// // // // // // // //       backgroundColor: Colors.white,
// // // // // // // //       appBar: AppBar(
// // // // // // // //         backgroundColor: Colors.transparent,
// // // // // // // //         elevation: 0,
// // // // // // // //         centerTitle: true,
// // // // // // // //         title: Text(
// // // // // // // //           'Buy Points',
// // // // // // // //           style: TextStyle(
// // // // // // // //             color: Colors.black87,
// // // // // // // //             fontWeight: FontWeight.bold,
// // // // // // // //           ),
// // // // // // // //         ),
// // // // // // // //         iconTheme: IconThemeData(color: Colors.black87),
// // // // // // // //       ),
// // // // // // // //       body: SingleChildScrollView(
// // // // // // // //         padding: const EdgeInsets.all(20),
// // // // // // // //         child: Column(
// // // // // // // //           children: [
// // // // // // // //             SizedBox(height: 20),
// // // // // // // //             Image.asset(
// // // // // // // //               'assets/ppp.png',
// // // // // // // //               height: 120,
// // // // // // // //             ),
// // // // // // // //             SizedBox(height: 20),
// // // // // // // //             Text(
// // // // // // // //               "Each point costs 1.5 TND.",
// // // // // // // //               style: TextStyle(
// // // // // // // //                 fontWeight: FontWeight.bold,
// // // // // // // //                 fontSize: 16,
// // // // // // // //                 color: Colors.black54,
// // // // // // // //               ),
// // // // // // // //             ),
// // // // // // // //             SizedBox(height: 30),
// // // // // // // //             TextField(
// // // // // // // //               controller: _pointsController,
// // // // // // // //               textAlign: TextAlign.center,
// // // // // // // //               keyboardType: TextInputType.number,
// // // // // // // //               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
// // // // // // // //               decoration: InputDecoration(
// // // // // // // //                 hintText: "Enter points",
// // // // // // // //                 border: OutlineInputBorder(
// // // // // // // //                   borderRadius: BorderRadius.circular(12),
// // // // // // // //                 ),
// // // // // // // //                 contentPadding:
// // // // // // // //                     EdgeInsets.symmetric(vertical: 12, horizontal: 10),
// // // // // // // //               ),
// // // // // // // //             ),
// // // // // // // //             SizedBox(height: 20),
// // // // // // // //             Text(
// // // // // // // //               "${_totalPrice.toStringAsFixed(2)} TND",
// // // // // // // //               style: TextStyle(
// // // // // // // //                 fontSize: 26,
// // // // // // // //                 fontWeight: FontWeight.bold,
// // // // // // // //                 color: Colors.black,
// // // // // // // //               ),
// // // // // // // //             ),
// // // // // // // //             SizedBox(height: 40),

// // // // // // // //             // Pay Online Button
// // // // // // // //             SizedBox(
// // // // // // // //               width: double.infinity,
// // // // // // // //               height: 55,
// // // // // // // //               child: ElevatedButton(
// // // // // // // //                 onPressed: _payOnline, // 👉 linked here
// // // // // // // //                 style: ElevatedButton.styleFrom(
// // // // // // // //                   backgroundColor: Color(0xFF76B3FA),
// // // // // // // //                   shape: RoundedRectangleBorder(
// // // // // // // //                     borderRadius: BorderRadius.circular(12),
// // // // // // // //                   ),
// // // // // // // //                 ),
// // // // // // // //                 child: Text(
// // // // // // // //                   "Pay Online",
// // // // // // // //                   style: TextStyle(
// // // // // // // //                     color: Colors.white,
// // // // // // // //                     fontWeight: FontWeight.bold,
// // // // // // // //                     fontSize: 16,
// // // // // // // //                   ),
// // // // // // // //                 ),
// // // // // // // //               ),
// // // // // // // //             ),

// // // // // // // //             SizedBox(height: 16),

// // // // // // // //             // Pay with Cash Button
// // // // // // // //             SizedBox(
// // // // // // // //               width: double.infinity,
// // // // // // // //               height: 55,
// // // // // // // //               child: ElevatedButton(
// // // // // // // //                 onPressed: () async {
// // // // // // // //                   final points = double.tryParse(_pointsController.text) ?? 0;

// // // // // // // //                   if (points == 0) {
// // // // // // // //                     ScaffoldMessenger.of(context).showSnackBar(
// // // // // // // //                       SnackBar(content: Text('Please enter valid points')),
// // // // // // // //                     );
// // // // // // // //                     return;
// // // // // // // //                   }

// // // // // // // //                   try {
// // // // // // // //                     final success =
// // // // // // // //                         await NotificationService.addNotificationToAdmin(
// // // // // // // //                       title: 'Adding Points',
// // // // // // // //                       content: 'User wants to buy $points points with cash.',
// // // // // // // //                       points: points.toInt(),
// // // // // // // //                       senderId:"67ff369b2f63df73b4ce3f1d", // 🔁 Replace with real sender ID (logged-in user)
// // // // // // // //                     );

// // // // // // // //                     if (success) {
// // // // // // // //                       ScaffoldMessenger.of(context).showSnackBar(
// // // // // // // //                         SnackBar(
// // // // // // // //                             content:
// // // // // // // //                                 Text('Request sent to admin successfully')),
// // // // // // // //                       );
// // // // // // // //                       // Navigator.pop(context); // Or show a thank-you page
// // // // // // // //                     } else {
// // // // // // // //                       ScaffoldMessenger.of(context).showSnackBar(
// // // // // // // //                         SnackBar(
// // // // // // // //                             content:
// // // // // // // //                                 Text('Something went wrong. Please try again')),
// // // // // // // //                       );
// // // // // // // //                     }
// // // // // // // //                   } catch (e) {
// // // // // // // //                     ScaffoldMessenger.of(context).showSnackBar(
// // // // // // // //                       SnackBar(content: Text('Error: $e')),
// // // // // // // //                     );
// // // // // // // //                   }
// // // // // // // //                 },
// // // // // // // //                 style: ElevatedButton.styleFrom(
// // // // // // // //                   backgroundColor: Colors.white,
// // // // // // // //                   side: BorderSide(color: Color(0xFF76B3FA), width: 2),
// // // // // // // //                   shape: RoundedRectangleBorder(
// // // // // // // //                     borderRadius: BorderRadius.circular(12),
// // // // // // // //                   ),
// // // // // // // //                 ),
// // // // // // // //                 child: Text(
// // // // // // // //                   "Pay with Cash",
// // // // // // // //                   style: TextStyle(
// // // // // // // //                     color: Color(0xFF76B3FA),
// // // // // // // //                     fontWeight: FontWeight.bold,
// // // // // // // //                     fontSize: 16,
// // // // // // // //                   ),
// // // // // // // //                 ),
// // // // // // // //               ),
// // // // // // // //             ),
// // // // // // // //           ],
// // // // // // // //         ),
// // // // // // // //       ),
// // // // // // // //     );
// // // // // // // //   }
// // // // // // // // }

// // // // // // // // import 'package:flutter/material.dart';
// // // // // // // // import 'services/notification_service.dart';
// // // // // // // // import 'services/user_service.dart';
// // // // // // // // import 'web_view_screen.dart';

// // // // // // // // class BuyPoints extends StatefulWidget {
// // // // // // // //   @override
// // // // // // // //   _BuyPointsState createState() => _BuyPointsState();
// // // // // // // // }

// // // // // // // // class _BuyPointsState extends State<BuyPoints> {
// // // // // // // //   final TextEditingController _pointsController = TextEditingController(text: '20');
// // // // // // // //   double _totalPrice = 30.0;

// // // // // // // //   void _updatePrice() {
// // // // // // // //     final points = double.tryParse(_pointsController.text) ?? 0;
// // // // // // // //     setState(() {
// // // // // // // //       _totalPrice = points * 1.5;
// // // // // // // //     });
// // // // // // // //   }

// // // // // // // //   @override
// // // // // // // //   void initState() {
// // // // // // // //     super.initState();
// // // // // // // //     _pointsController.addListener(_updatePrice);
// // // // // // // //   }

// // // // // // // //   @override
// // // // // // // //   void dispose() {
// // // // // // // //     _pointsController.dispose();
// // // // // // // //     super.dispose();
// // // // // // // //   }

// // // // // // // //   Future<void> _payOnline() async {
// // // // // // // //     final points = double.tryParse(_pointsController.text) ?? 0;
// // // // // // // //     if (points == 0) {
// // // // // // // //       ScaffoldMessenger.of(context).showSnackBar(
// // // // // // // //         SnackBar(content: Text('Please enter valid points')),
// // // // // // // //       );
// // // // // // // //       return;
// // // // // // // //     }

// // // // // // // //     final result = await UserService.getCheckoutSession(
// // // // // // // //       amount: _totalPrice,
// // // // // // // //       userId: "68061fe32ad4c790b10a13d6",
// // // // // // // //       points: points.toInt(),
// // // // // // // //     );

// // // // // // // //     if (result != null && result['payUrl'] != null) {
// // // // // // // //       Navigator.push(
// // // // // // // //         context,
// // // // // // // //         MaterialPageRoute(
// // // // // // // //           builder: (context) => WebViewScreen(payUrl: result['payUrl']),
// // // // // // // //         ),
// // // // // // // //       );
// // // // // // // //     } else {
// // // // // // // //       ScaffoldMessenger.of(context).showSnackBar(
// // // // // // // //         SnackBar(content: Text('Failed to start payment session')),
// // // // // // // //       );
// // // // // // // //     }
// // // // // // // //   }

// // // // // // // //   @override
// // // // // // // //   Widget build(BuildContext context) {
// // // // // // // //     return Scaffold(
// // // // // // // //       backgroundColor: Colors.white,
// // // // // // // //       body: SafeArea(
// // // // // // // //         child: Padding(
// // // // // // // //           padding: const EdgeInsets.symmetric(horizontal: 28.0),
// // // // // // // //           child: Column(
// // // // // // // //             crossAxisAlignment: CrossAxisAlignment.center,
// // // // // // // //             children: [
// // // // // // // //               const SizedBox(height: 40),

// // // // // // // //               // ✅ Illustration
// // // // // // // //               Center(
// // // // // // // //                 child: Image.asset(
// // // // // // // //                   'assets/ppp.png',
// // // // // // // //                   height: 140,
// // // // // // // //                 ),
// // // // // // // //               ),
// // // // // // // //               const SizedBox(height: 30),

// // // // // // // //               // ✅ Price in USD
// // // // // // // //               Text(
// // // // // // // //                 '\$${(_totalPrice / 1.5).toStringAsFixed(0)}',
// // // // // // // //                 style: TextStyle(
// // // // // // // //                   fontSize: 34,
// // // // // // // //                   fontWeight: FontWeight.bold,
// // // // // // // //                   color: Colors.black,
// // // // // // // //                 ),
// // // // // // // //               ),
// // // // // // // //               const SizedBox(height: 6),

// // // // // // // //               // ✅ FTM and Network
// // // // // // // //               Text(
// // // // // // // //                 '0.000573 FTM',
// // // // // // // //                 style: TextStyle(color: Colors.black54),
// // // // // // // //               ),
// // // // // // // //               const SizedBox(height: 4),
// // // // // // // //               Text(
// // // // // // // //                 'Destination network Shibainu',
// // // // // // // //                 style: TextStyle(fontWeight: FontWeight.w500),
// // // // // // // //               ),
// // // // // // // //               const SizedBox(height: 20),

// // // // // // // //               // ✅ Fee Rows
// // // // // // // //               _feeRow("Bridge fee", "\$0.3"),
// // // // // // // //               _feeRow("Destination chain fee", "\$0.3"),
// // // // // // // //               const SizedBox(height: 16),

// // // // // // // //               // ✅ Notice Box
// // // // // // // //               Container(
// // // // // // // //                 padding: EdgeInsets.all(14),
// // // // // // // //                 decoration: BoxDecoration(
// // // // // // // //                   color: Colors.grey.shade100,
// // // // // // // //                   borderRadius: BorderRadius.circular(12),
// // // // // // // //                 ),
// // // // // // // //                 child: Row(
// // // // // // // //                   children: [
// // // // // // // //                     Icon(Icons.info_outline, size: 20, color: Colors.grey[600]),
// // // // // // // //                     SizedBox(width: 8),
// // // // // // // //                     Expanded(
// // // // // // // //                       child: Text(
// // // // // // // //                         "Your bridge crypto transaction will be completed in approximately 4 days.",
// // // // // // // //                         style: TextStyle(fontSize: 13.5, color: Colors.black54),
// // // // // // // //                       ),
// // // // // // // //                     ),
// // // // // // // //                   ],
// // // // // // // //                 ),
// // // // // // // //               ),

// // // // // // // //               const SizedBox(height: 28),

// // // // // // // //               // ✅ Input
// // // // // // // //               TextField(
// // // // // // // //                 controller: _pointsController,
// // // // // // // //                 textAlign: TextAlign.center,
// // // // // // // //                 keyboardType: TextInputType.number,
// // // // // // // //                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
// // // // // // // //                 decoration: InputDecoration(
// // // // // // // //                   hintText: "Enter points",
// // // // // // // //                   contentPadding: EdgeInsets.symmetric(vertical: 14),
// // // // // // // //                   border: OutlineInputBorder(
// // // // // // // //                     borderRadius: BorderRadius.circular(14),
// // // // // // // //                   ),
// // // // // // // //                 ),
// // // // // // // //               ),
// // // // // // // //               const SizedBox(height: 20),

// // // // // // // //               // ✅ Total in TND
// // // // // // // //               Text(
// // // // // // // //                 "${_totalPrice.toStringAsFixed(2)} TND",
// // // // // // // //                 style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
// // // // // // // //               ),

// // // // // // // //               const Spacer(),

// // // // // // // //               // ✅ Pay Online Button
// // // // // // // //               SizedBox(
// // // // // // // //                 width: double.infinity,
// // // // // // // //                 height: 55,
// // // // // // // //                 child: ElevatedButton(
// // // // // // // //                   onPressed: _payOnline,
// // // // // // // //                   style: ElevatedButton.styleFrom(
// // // // // // // //                     backgroundColor: Colors.black,
// // // // // // // //                     shape: RoundedRectangleBorder(
// // // // // // // //                       borderRadius: BorderRadius.circular(14),
// // // // // // // //                     ),
// // // // // // // //                   ),
// // // // // // // //                   child: Text(
// // // // // // // //                     "Bridge",
// // // // // // // //                     style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
// // // // // // // //                   ),
// // // // // // // //                 ),
// // // // // // // //               ),
// // // // // // // //               const SizedBox(height: 14),

// // // // // // // //               // ✅ Pay with Cash Button
// // // // // // // //               SizedBox(
// // // // // // // //                 width: double.infinity,
// // // // // // // //                 height: 55,
// // // // // // // //                 child: OutlinedButton(
// // // // // // // //                   onPressed: () async {
// // // // // // // //                     final points = double.tryParse(_pointsController.text) ?? 0;
// // // // // // // //                     if (points == 0) {
// // // // // // // //                       ScaffoldMessenger.of(context).showSnackBar(
// // // // // // // //                         SnackBar(content: Text('Please enter valid points')),
// // // // // // // //                       );
// // // // // // // //                       return;
// // // // // // // //                     }
// // // // // // // //                     try {
// // // // // // // //                       final success = await NotificationService.addNotificationToAdmin(
// // // // // // // //                         title: 'Adding Points',
// // // // // // // //                         content: 'User wants to buy $points points with cash.',
// // // // // // // //                         points: points.toInt(),
// // // // // // // //                         senderId: "67ff369b2f63df73b4ce3f1d",
// // // // // // // //                       );
// // // // // // // //                       if (success) {
// // // // // // // //                         ScaffoldMessenger.of(context).showSnackBar(
// // // // // // // //                           SnackBar(content: Text('Request sent to admin successfully')),
// // // // // // // //                         );
// // // // // // // //                       } else {
// // // // // // // //                         ScaffoldMessenger.of(context).showSnackBar(
// // // // // // // //                           SnackBar(content: Text('Something went wrong. Please try again')),
// // // // // // // //                         );
// // // // // // // //                       }
// // // // // // // //                     } catch (e) {
// // // // // // // //                       ScaffoldMessenger.of(context).showSnackBar(
// // // // // // // //                         SnackBar(content: Text('Error: $e')),
// // // // // // // //                       );
// // // // // // // //                     }
// // // // // // // //                   },
// // // // // // // //                   style: OutlinedButton.styleFrom(
// // // // // // // //                     side: BorderSide(color: Colors.black, width: 1.4),
// // // // // // // //                     shape: RoundedRectangleBorder(
// // // // // // // //                       borderRadius: BorderRadius.circular(14),
// // // // // // // //                     ),
// // // // // // // //                   ),
// // // // // // // //                   child: Text(
// // // // // // // //                     "Pay with Cash",
// // // // // // // //                     style: TextStyle(
// // // // // // // //                       fontWeight: FontWeight.bold,
// // // // // // // //                       fontSize: 16,
// // // // // // // //                       color: Colors.black,
// // // // // // // //                     ),
// // // // // // // //                   ),
// // // // // // // //                 ),
// // // // // // // //               ),

// // // // // // // //               const SizedBox(height: 28),
// // // // // // // //             ],
// // // // // // // //           ),
// // // // // // // //         ),
// // // // // // // //       ),
// // // // // // // //     );
// // // // // // // //   }

// // // // // // // //   Widget _feeRow(String label, String amount) {
// // // // // // // //     return Padding(
// // // // // // // //       padding: const EdgeInsets.symmetric(vertical: 4),
// // // // // // // //       child: Row(
// // // // // // // //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // // // // // // //         children: [
// // // // // // // //           Text(label, style: TextStyle(color: Colors.black54)),
// // // // // // // //           Text(amount, style: TextStyle(fontWeight: FontWeight.bold)),
// // // // // // // //         ],
// // // // // // // //       ),
// // // // // // // //     );
// // // // // // // //   }
// // // // // // // // }

// // // // // // // import 'package:flutter/material.dart';
// // // // // // // import 'services/notification_service.dart';
// // // // // // // import 'web_view_screen.dart';
// // // // // // // import 'services/user_service.dart';

// // // // // // // class BuyPoints extends StatefulWidget {
// // // // // // //   @override
// // // // // // //   _BuyPointsState createState() => _BuyPointsState();
// // // // // // // }

// // // // // // // class _BuyPointsState extends State<BuyPoints> {
// // // // // // //   final TextEditingController _pointsController =
// // // // // // //       TextEditingController(text: '20');
// // // // // // //   double _totalPrice = 30.0;

// // // // // // //   void _updatePrice() {
// // // // // // //     final points = double.tryParse(_pointsController.text) ?? 0;
// // // // // // //     setState(() {
// // // // // // //       _totalPrice = points * 1.5;
// // // // // // //     });
// // // // // // //   }

// // // // // // //   @override
// // // // // // //   void initState() {
// // // // // // //     super.initState();
// // // // // // //     _pointsController.addListener(_updatePrice);
// // // // // // //   }

// // // // // // //   @override
// // // // // // //   void dispose() {
// // // // // // //     _pointsController.dispose();
// // // // // // //     super.dispose();
// // // // // // //   }

// // // // // // //   Future<void> _payOnline() async {
// // // // // // //     final points = double.tryParse(_pointsController.text) ?? 0;
// // // // // // //     if (points == 0) {
// // // // // // //       ScaffoldMessenger.of(context)
// // // // // // //           .showSnackBar(SnackBar(content: Text('Please enter valid points')));
// // // // // // //       return;
// // // // // // //     }

// // // // // // //     final result = await UserService.getCheckoutSession(
// // // // // // //       amount: _totalPrice,
// // // // // // //       userId: "67ff369b2f63df73b4ce3f1d", // Replace with actual ID
// // // // // // //       points: points.toInt(),
// // // // // // //     );

// // // // // // //     if (result != null && result['payUrl'] != null) {
// // // // // // //       Navigator.push(
// // // // // // //           context,
// // // // // // //           MaterialPageRoute(
// // // // // // //             builder: (context) => WebViewScreen(payUrl: result['payUrl']),
// // // // // // //           ));
// // // // // // //     } else {
// // // // // // //       ScaffoldMessenger.of(context).showSnackBar(
// // // // // // //           SnackBar(content: Text('Failed to start payment session')));
// // // // // // //     }
// // // // // // //   }

// // // // // // //   void _payWithCash() {
// // // // // // //     ScaffoldMessenger.of(context).showSnackBar(
// // // // // // //       SnackBar(content: Text('Cash payment request sent successfully')),
// // // // // // //     );
// // // // // // //     // TODO: Trigger your notification or DB update here
// // // // // // //   }

// // // // // // //   @override
// // // // // // //   Widget build(BuildContext context) {
// // // // // // //     return Scaffold(
// // // // // // //       backgroundColor: Color(0xFFF8F9FB),
// // // // // // //       appBar: AppBar(
// // // // // // //         backgroundColor: Colors.transparent,
// // // // // // //         elevation: 0,
// // // // // // //         centerTitle: true,
// // // // // // //         title: Text('Buy Points',
// // // // // // //             style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
// // // // // // //         iconTheme: IconThemeData(color: Colors.black),
// // // // // // //       ),
// // // // // // //       body: SingleChildScrollView(
// // // // // // //         padding: EdgeInsets.symmetric(horizontal: 24),
// // // // // // //         child: Column(
// // // // // // //           children: [
// // // // // // //             SizedBox(height: 20),
// // // // // // //             Image.asset('assets/ppp.png', height: 100),
// // // // // // //             SizedBox(height: 16),
// // // // // // //             Text('Each point costs 1.5 TND.',
// // // // // // //                 style: TextStyle(color: Colors.grey[600])),
// // // // // // //             SizedBox(height: 20),
// // // // // // //             TextField(
// // // // // // //               controller: _pointsController,
// // // // // // //               keyboardType: TextInputType.number,
// // // // // // //               textAlign: TextAlign.center,
// // // // // // //               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
// // // // // // //               decoration: InputDecoration(
// // // // // // //                 hintText: "Enter points",
// // // // // // //                 filled: true,
// // // // // // //                 fillColor: Colors.white,
// // // // // // //                 contentPadding: EdgeInsets.symmetric(vertical: 14),
// // // // // // //                 border:
// // // // // // //                     OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
// // // // // // //               ),
// // // // // // //             ),
// // // // // // //             SizedBox(height: 20),
// // // // // // //             Text("${_totalPrice.toStringAsFixed(2)} TND",
// // // // // // //                 style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
// // // // // // //             SizedBox(height: 20),
// // // // // // //             Divider(),
// // // // // // //             ListTile(
// // // // // // //               dense: true,
// // // // // // //               title:
// // // // // // //                   Text("Bridge fee", style: TextStyle(color: Colors.grey[700])),
// // // // // // //               trailing: Text("0.3 TND",
// // // // // // //                   style: TextStyle(fontWeight: FontWeight.bold)),
// // // // // // //             ),
// // // // // // //             ListTile(
// // // // // // //               dense: true,
// // // // // // //               title: Text("Destination chain fee",
// // // // // // //                   style: TextStyle(color: Colors.grey[700])),
// // // // // // //               trailing: Text("0.3 TND",
// // // // // // //                   style: TextStyle(fontWeight: FontWeight.bold)),
// // // // // // //             ),
// // // // // // //             Container(
// // // // // // //               padding: EdgeInsets.all(14),
// // // // // // //               margin: EdgeInsets.symmetric(vertical: 16),
// // // // // // //               decoration: BoxDecoration(
// // // // // // //                 color: Colors.grey.shade100,
// // // // // // //                 borderRadius: BorderRadius.circular(12),
// // // // // // //               ),
// // // // // // //               child: Row(
// // // // // // //                 children: [
// // // // // // //                   Icon(Icons.info_outline, size: 20, color: Colors.grey),
// // // // // // //                   SizedBox(width: 10),
// // // // // // //                   Expanded(
// // // // // // //                     child: Text(
// // // // // // //                       'Your bridge crypto transaction will be completed in approximately 4 days.',
// // // // // // //                       style: TextStyle(color: Colors.grey[700], fontSize: 13),
// // // // // // //                     ),
// // // // // // //                   )
// // // // // // //                 ],
// // // // // // //               ),
// // // // // // //             ),
// // // // // // //             SizedBox(height: 10),
// // // // // // //             ElevatedButton(
// // // // // // //               onPressed: _payOnline,
// // // // // // //               child: Text("Pay Online",
// // // // // // //                   style: TextStyle(fontWeight: FontWeight.bold)),
// // // // // // //               style: ElevatedButton.styleFrom(
// // // // // // //                 backgroundColor: Color(0xFF007BFF),
// // // // // // //                 foregroundColor: Colors.white,
// // // // // // //                 minimumSize: Size(double.infinity, 50),
// // // // // // //                 shape: RoundedRectangleBorder(
// // // // // // //                     borderRadius: BorderRadius.circular(12)),
// // // // // // //               ),
// // // // // // //             ),
// // // // // // //             // SizedBox(height: 10),
// // // // // // //             // OutlinedButton(
// // // // // // //             //   onPressed: _payWithCash,
// // // // // // //             //   child: Text("Pay with Cash",
// // // // // // //             //       style: TextStyle(
// // // // // // //             //           fontWeight: FontWeight.bold, color: Color(0xFF007BFF))),
// // // // // // //             //   style: OutlinedButton.styleFrom(
// // // // // // //             //     side: BorderSide(color: Color(0xFF007BFF)),
// // // // // // //             //     minimumSize: Size(double.infinity, 50),
// // // // // // //             //     shape: RoundedRectangleBorder(
// // // // // // //             //         borderRadius: BorderRadius.circular(12)),
// // // // // // //             //   ),
// // // // // // //             // ),

// // // // // // //             SizedBox(
// // // // // // //               width: double.infinity,
// // // // // // //               height: 55,
// // // // // // //               child: ElevatedButton(
// // // // // // //                 onPressed: () async {
// // // // // // //                   final points = double.tryParse(_pointsController.text) ?? 0;

// // // // // // //                   if (points == 0) {
// // // // // // //                     ScaffoldMessenger.of(context).showSnackBar(
// // // // // // //                       SnackBar(content: Text('Please enter valid points')),
// // // // // // //                     );
// // // // // // //                     return;
// // // // // // //                   }

// // // // // // //                   try {
// // // // // // //                     final success =
// // // // // // //                         await NotificationService.addNotificationToAdmin(
// // // // // // //                       title: 'Adding Points',
// // // // // // //                       content: 'User wants to buy $points points with cash.',
// // // // // // //                       points: points.toInt(),
// // // // // // //                       senderId:
// // // // // // //                           "67ff369b2f63df73b4ce3f1d", // Replace with real user ID
// // // // // // //                     );

// // // // // // //                     if (success) {
// // // // // // //                       ScaffoldMessenger.of(context).showSnackBar(
// // // // // // //                         SnackBar(
// // // // // // //                             content:
// // // // // // //                                 Text('Request sent to admin successfully')),
// // // // // // //                       );
// // // // // // //                       // Optionally navigate or reset input here
// // // // // // //                     } else {
// // // // // // //                       ScaffoldMessenger.of(context).showSnackBar(
// // // // // // //                         SnackBar(
// // // // // // //                             content:
// // // // // // //                                 Text('Something went wrong. Please try again')),
// // // // // // //                       );
// // // // // // //                     }
// // // // // // //                   } catch (e) {
// // // // // // //                     ScaffoldMessenger.of(context).showSnackBar(
// // // // // // //                       SnackBar(content: Text('Error: $e')),
// // // // // // //                     );
// // // // // // //                   }
// // // // // // //                 },
// // // // // // //                 style: ElevatedButton.styleFrom(
// // // // // // //                   backgroundColor: Colors.white,
// // // // // // //                   side: BorderSide(color: Color(0xFF76B3FA), width: 2),
// // // // // // //                   shape: RoundedRectangleBorder(
// // // // // // //                     borderRadius: BorderRadius.circular(12),
// // // // // // //                   ),
// // // // // // //                 ),
// // // // // // //                 child: Text(
// // // // // // //                   "Pay with Cash",
// // // // // // //                   style: TextStyle(
// // // // // // //                     color: Color(0xFF76B3FA),
// // // // // // //                     fontWeight: FontWeight.bold,
// // // // // // //                     fontSize: 16,
// // // // // // //                   ),
// // // // // // //                 ),
// // // // // // //               ),
// // // // // // //             ),
// // // // // // //           ],
// // // // // // //         ),
// // // // // // //       ),
// // // // // // //     );
// // // // // // //   }
// // // // // // // }

// // // // // // import 'package:flutter/material.dart';
// // // // // // import 'services/notification_service.dart';
// // // // // // import 'services/user_service.dart';
// // // // // // import 'web_view_screen.dart';

// // // // // // class BuyPoints extends StatefulWidget {
// // // // // //   @override
// // // // // //   _BuyPointsState createState() => _BuyPointsState();
// // // // // // }

// // // // // // class _BuyPointsState extends State<BuyPoints> {
// // // // // //   final TextEditingController _pointsController =
// // // // // //       TextEditingController(text: '20');
// // // // // //   double _totalPrice = 30.0;

// // // // // //   void _updatePrice() {
// // // // // //     final points = double.tryParse(_pointsController.text) ?? 0;
// // // // // //     setState(() {
// // // // // //       _totalPrice = points * 1.5;
// // // // // //     });
// // // // // //   }

// // // // // //   @override
// // // // // //   void initState() {
// // // // // //     super.initState();
// // // // // //     _pointsController.addListener(_updatePrice);
// // // // // //   }

// // // // // //   @override
// // // // // //   void dispose() {
// // // // // //     _pointsController.dispose();
// // // // // //     super.dispose();
// // // // // //   }

// // // // // //   Future<void> _payOnline() async {
// // // // // //     final points = double.tryParse(_pointsController.text) ?? 0;
// // // // // //     if (points <= 0) {
// // // // // //       _showSnackbar('Please enter valid points');
// // // // // //       return;
// // // // // //     }

// // // // // //     final result = await UserService.getCheckoutSession(
// // // // // //       amount: _totalPrice,
// // // // // //       userId: "67ff369b2f63df73b4ce3f1d", // Replace with real user ID
// // // // // //       points: points.toInt(),
// // // // // //     );

// // // // // //     if (result != null && result['payUrl'] != null) {
// // // // // //       Navigator.push(
// // // // // //         context,
// // // // // //         MaterialPageRoute(
// // // // // //           builder: (context) => WebViewScreen(payUrl: result['payUrl']),
// // // // // //         ),
// // // // // //       );
// // // // // //     } else {
// // // // // //       _showSnackbar('Failed to start payment session');
// // // // // //     }
// // // // // //   }

// // // // // //   Future<void> _payWithCash() async {
// // // // // //     final points = double.tryParse(_pointsController.text) ?? 0;
// // // // // //     if (points <= 0) {
// // // // // //       _showSnackbar('Please enter valid points');
// // // // // //       return;
// // // // // //     }

// // // // // //     try {
// // // // // //       final success = await NotificationService.addNotificationToAdmin(
// // // // // //         title: 'Adding Points',
// // // // // //         content: 'User wants to buy $points points with cash.',
// // // // // //         points: points.toInt(),
// // // // // //         senderId: "67ff369b2f63df73b4ce3f1d",
// // // // // //       );

// // // // // //       _showSnackbar(success
// // // // // //           ? 'Request sent to admin successfully'
// // // // // //           : 'Something went wrong. Please try again');
// // // // // //     } catch (e) {
// // // // // //       _showSnackbar('Error: $e');
// // // // // //     }
// // // // // //   }

// // // // // //   void _showSnackbar(String message) {
// // // // // //     ScaffoldMessenger.of(context)
// // // // // //         .showSnackBar(SnackBar(content: Text(message)));
// // // // // //   }

// // // // // //   @override
// // // // // //   Widget build(BuildContext context) {
// // // // // //     return Scaffold(
// // // // // //       backgroundColor: const Color(0xFFF5F7FA),
// // // // // //       appBar: AppBar(
// // // // // //         title: const Text('Buy Points',
// // // // // //             style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600)),
// // // // // //         centerTitle: true,
// // // // // //         backgroundColor: Colors.transparent,
// // // // // //         elevation: 0,
// // // // // //         iconTheme: const IconThemeData(color: Colors.black),
// // // // // //       ),
// // // // // //       body: SingleChildScrollView(
// // // // // //         padding: const EdgeInsets.all(24),
// // // // // //         child: Column(
// // // // // //           children: [
// // // // // //             const SizedBox(height: 20),
// // // // // //             Image.asset('assets/ppp.png', height: 100),
// // // // // //             const SizedBox(height: 16),
// // // // // //             const Text('Each point costs 1.5 TND.',
// // // // // //                 style: TextStyle(fontSize: 15, color: Colors.black54)),
// // // // // //             const SizedBox(height: 20),
// // // // // //             TextField(
// // // // // //               controller: _pointsController,
// // // // // //               keyboardType: TextInputType.number,
// // // // // //               textAlign: TextAlign.center,
// // // // // //               style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
// // // // // //               decoration: InputDecoration(
// // // // // //                 hintText: "Enter points",
// // // // // //                 filled: true,
// // // // // //                 fillColor: Colors.white,
// // // // // //                 contentPadding: const EdgeInsets.symmetric(vertical: 14),
// // // // // //                 border: OutlineInputBorder(
// // // // // //                   borderRadius: BorderRadius.circular(14),
// // // // // //                 ),
// // // // // //               ),
// // // // // //             ),
// // // // // //             const SizedBox(height: 20),
// // // // // //             Text(
// // // // // //               "${_totalPrice.toStringAsFixed(2)} TND",
// // // // // //               style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
// // // // // //             ),
// // // // // //             const SizedBox(height: 24),
// // // // // //             _feeRow("Bridge fee", "0.3 TND"),
// // // // // //             _feeRow("Destination chain fee", "0.3 TND"),
// // // // // //             Container(
// // // // // //               margin: const EdgeInsets.symmetric(vertical: 20),
// // // // // //               padding: const EdgeInsets.all(14),
// // // // // //               decoration: BoxDecoration(
// // // // // //                 color: Colors.grey.shade100,
// // // // // //                 borderRadius: BorderRadius.circular(12),
// // // // // //               ),
// // // // // //               child: Row(
// // // // // //                 children: [
// // // // // //                   const Icon(Icons.info_outline, size: 20, color: Colors.grey),
// // // // // //                   const SizedBox(width: 8),
// // // // // //                   const Expanded(
// // // // // //                     child: Text(
// // // // // //                       "Your bridge crypto transaction will be completed in approximately 4 days.",
// // // // // //                       style: TextStyle(fontSize: 13.5, color: Colors.black54),
// // // // // //                     ),
// // // // // //                   ),
// // // // // //                 ],
// // // // // //               ),
// // // // // //             ),
// // // // // //             const SizedBox(height: 10),
// // // // // //             ElevatedButton(
// // // // // //               onPressed: _payOnline,
// // // // // //               style: ElevatedButton.styleFrom(
// // // // // //                 backgroundColor: const Color(0xFF007BFF),
// // // // // //                 foregroundColor: Colors.white,
// // // // // //                 minimumSize: const Size.fromHeight(50),
// // // // // //                 shape: RoundedRectangleBorder(
// // // // // //                   borderRadius: BorderRadius.circular(14),
// // // // // //                 ),
// // // // // //               ),
// // // // // //               child: const Text("Pay Online",
// // // // // //                   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
// // // // // //             ),
// // // // // //             const SizedBox(height: 12),
// // // // // //             OutlinedButton(
// // // // // //               onPressed: _payWithCash,
// // // // // //               style: OutlinedButton.styleFrom(
// // // // // //                 side: const BorderSide(color: Color(0xFF007BFF), width: 1.5),
// // // // // //                 minimumSize: const Size.fromHeight(50),
// // // // // //                 shape: RoundedRectangleBorder(
// // // // // //                   borderRadius: BorderRadius.circular(14),
// // // // // //                 ),
// // // // // //               ),
// // // // // //               child: const Text("Pay with Cash",
// // // // // //                   style: TextStyle(
// // // // // //                       fontWeight: FontWeight.bold,
// // // // // //                       fontSize: 16,
// // // // // //                       color: Color(0xFF007BFF))),
// // // // // //             ),
// // // // // //           ],
// // // // // //         ),
// // // // // //       ),
// // // // // //     );
// // // // // //   }

// // // // // //   Widget _feeRow(String label, String amount) {
// // // // // //     return Padding(
// // // // // //       padding: const EdgeInsets.symmetric(vertical: 4),
// // // // // //       child: Row(
// // // // // //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // // // // //         children: [
// // // // // //           Text(label,
// // // // // //               style: const TextStyle(color: Colors.black54, fontSize: 14)),
// // // // // //           Text(amount,
// // // // // //               style:
// // // // // //                   const TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
// // // // // //         ],
// // // // // //       ),
// // // // // //     );
// // // // // //   }
// // // // // // }

// // // // // import 'package:flutter/material.dart';
// // // // // import 'services/notification_service.dart';
// // // // // import 'services/user_service.dart';
// // // // // import 'web_view_screen.dart';

// // // // // class BuyPoints extends StatefulWidget {
// // // // //   @override
// // // // //   _BuyPointsState createState() => _BuyPointsState();
// // // // // }

// // // // // class _BuyPointsState extends State<BuyPoints> {
// // // // //   final TextEditingController _pointsController =
// // // // //       TextEditingController(text: '20');
// // // // //   double _totalPrice = 30.0;

// // // // //   @override
// // // // //   void initState() {
// // // // //     super.initState();
// // // // //     _pointsController.addListener(() {
// // // // //       final points = double.tryParse(_pointsController.text) ?? 0;
// // // // //       setState(() {
// // // // //         _totalPrice = points * 1.5;
// // // // //       });
// // // // //     });
// // // // //   }

// // // // //   @override
// // // // //   void dispose() {
// // // // //     _pointsController.dispose();
// // // // //     super.dispose();
// // // // //   }

// // // // //   void _showSnackbar(String message) {
// // // // //     ScaffoldMessenger.of(context)
// // // // //         .showSnackBar(SnackBar(content: Text(message)));
// // // // //   }

// // // // //   Future<void> _payOnline() async {
// // // // //     final points = double.tryParse(_pointsController.text) ?? 0;
// // // // //     if (points <= 0) return _showSnackbar('Enter valid number of points.');

// // // // //     final result = await UserService.getCheckoutSession(
// // // // //       amount: _totalPrice,
// // // // //       userId: "67ff369b2f63df73b4ce3f1d", // Replace with actual user ID
// // // // //       points: points.toInt(),
// // // // //     );

// // // // //     if (result != null && result['payUrl'] != null) {
// // // // //       Navigator.push(
// // // // //         context,
// // // // //         MaterialPageRoute(
// // // // //           builder: (context) => WebViewScreen(payUrl: result['payUrl']),
// // // // //         ),
// // // // //       );
// // // // //     } else {
// // // // //       _showSnackbar('Payment session failed to start.');
// // // // //     }
// // // // //   }

// // // // //   Future<void> _payWithCash() async {
// // // // //     final points = double.tryParse(_pointsController.text) ?? 0;
// // // // //     if (points <= 0) return _showSnackbar('Enter valid number of points.');

// // // // //     final success = await NotificationService.addNotificationToAdmin(
// // // // //       title: 'Cash Purchase Request',
// // // // //       content: 'User wants to buy $points points with cash.',
// // // // //       points: points.toInt(),
// // // // //       senderId: "67ff369b2f63df73b4ce3f1d",
// // // // //     );

// // // // //     _showSnackbar(
// // // // //         success ? 'Request sent successfully.' : 'Failed to send request.');
// // // // //   }

// // // // //   @override
// // // // //   Widget build(BuildContext context) {
// // // // //     return GestureDetector(
// // // // //       onTap: () => FocusScope.of(context).unfocus(), // Dismiss keyboard
// // // // //       child: Scaffold(
// // // // //         backgroundColor: const Color(0xFFF7F9FC),
// // // // //         appBar: AppBar(
// // // // //           elevation: 0,
// // // // //           backgroundColor: Colors.transparent,
// // // // //           centerTitle: true,
// // // // //           title: const Text('Buy Points',
// // // // //               style:
// // // // //                   TextStyle(color: Colors.black, fontWeight: FontWeight.w600)),
// // // // //           iconTheme: const IconThemeData(color: Colors.black),
// // // // //         ),
// // // // //         body: SingleChildScrollView(
// // // // //           padding: const EdgeInsets.all(24),
// // // // //           child: Column(
// // // // //             crossAxisAlignment: CrossAxisAlignment.stretch,
// // // // //             children: [
// // // // //               const SizedBox(height: 20),
// // // // //               Center(child: Image.asset('assets/ppp.png', height: 100)),
// // // // //               const SizedBox(height: 20),
// // // // //               const Text('Each point costs 1.5 TND.',
// // // // //                   textAlign: TextAlign.center,
// // // // //                   style: TextStyle(fontSize: 15, color: Colors.black54)),
// // // // //               const SizedBox(height: 20),
// // // // //               _buildInputField(),
// // // // //               const SizedBox(height: 12),
// // // // //               Text("${_totalPrice.toStringAsFixed(2)} TND",
// // // // //                   textAlign: TextAlign.center,
// // // // //                   style: const TextStyle(
// // // // //                       fontSize: 26, fontWeight: FontWeight.bold)),
// // // // //               const SizedBox(height: 20),
// // // // //               _feeRow('Bridge Fee', '0.3 TND'),
// // // // //               _feeRow('Destination Chain Fee', '0.3 TND'),
// // // // //               const SizedBox(height: 16),
// // // // //               _infoNotice(),
// // // // //               const SizedBox(height: 20),
// // // // //               _actionButton(
// // // // //                 text: "Pay Online",
// // // // //                 background: const Color(0xFF007BFF),
// // // // //                 textColor: Colors.white,
// // // // //                 onTap: _payOnline,
// // // // //               ),
// // // // //               const SizedBox(height: 14),
// // // // //               _actionButton(
// // // // //                 text: "Pay with Cash",
// // // // //                 background: Colors.white,
// // // // //                 textColor: const Color(0xFF007BFF),
// // // // //                 border: const Color(0xFF007BFF),
// // // // //                 onTap: _payWithCash,
// // // // //               ),
// // // // //               const SizedBox(height: 20),
// // // // //             ],
// // // // //           ),
// // // // //         ),
// // // // //       ),
// // // // //     );
// // // // //   }

// // // // //   Widget _buildInputField() {
// // // // //     return TextField(
// // // // //       controller: _pointsController,
// // // // //       textAlign: TextAlign.center,
// // // // //       keyboardType: TextInputType.number,
// // // // //       style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
// // // // //       decoration: InputDecoration(
// // // // //         hintText: "Enter number of points",
// // // // //         filled: true,
// // // // //         fillColor: Colors.white,
// // // // //         contentPadding: const EdgeInsets.symmetric(vertical: 14),
// // // // //         border: OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
// // // // //       ),
// // // // //     );
// // // // //   }

// // // // //   Widget _feeRow(String label, String value) {
// // // // //     return Padding(
// // // // //       padding: const EdgeInsets.symmetric(vertical: 4),
// // // // //       child: Row(
// // // // //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // // // //         children: [
// // // // //           Text(label, style: const TextStyle(color: Colors.black54)),
// // // // //           Text(value, style: const TextStyle(fontWeight: FontWeight.w600)),
// // // // //         ],
// // // // //       ),
// // // // //     );
// // // // //   }

// // // // //   Widget _infoNotice() {
// // // // //     return Container(
// // // // //       padding: const EdgeInsets.all(14),
// // // // //       decoration: BoxDecoration(
// // // // //         color: Colors.grey.shade100,
// // // // //         borderRadius: BorderRadius.circular(12),
// // // // //       ),
// // // // //       child: Row(
// // // // //         children: const [
// // // // //           Icon(Icons.info_outline, size: 20, color: Colors.grey),
// // // // //           SizedBox(width: 8),
// // // // //           Expanded(
// // // // //             child: Text(
// // // // //               "Your bridge crypto transaction will be completed in approx. 4 days.",
// // // // //               style: TextStyle(fontSize: 13.5, color: Colors.black54),
// // // // //             ),
// // // // //           ),
// // // // //         ],
// // // // //       ),
// // // // //     );
// // // // //   }

// // // // //   Widget _actionButton({
// // // // //     required String text,
// // // // //     required Color background,
// // // // //     required Color textColor,
// // // // //     Color? border,
// // // // //     required VoidCallback onTap,
// // // // //   }) {
// // // // //     return ElevatedButton(
// // // // //       onPressed: onTap,
// // // // //       style: ElevatedButton.styleFrom(
// // // // //         elevation: 0,
// // // // //         backgroundColor: background,
// // // // //         foregroundColor: textColor,
// // // // //         minimumSize: const Size.fromHeight(50),
// // // // //         side: border != null ? BorderSide(color: border, width: 1.5) : null,
// // // // //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
// // // // //       ),
// // // // //       child: Text(text,
// // // // //           style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
// // // // //     );
// // // // //   }
// // // // // }

// // // // import 'package:flutter/material.dart';

// // // // class BuyPoints extends StatefulWidget {
// // // //   @override
// // // //   _BuyPointsState createState() => _BuyPointsState();
// // // // }

// // // // class _BuyPointsState extends State<BuyPoints> {
// // // //   final TextEditingController _pointsController = TextEditingController(text: '20');
// // // //   double _totalPrice = 30.0;
// // // //   final double pricePerPoint = 1.5;

// // // //   void _updatePrice() {
// // // //     final points = double.tryParse(_pointsController.text) ?? 0;
// // // //     setState(() {
// // // //       _totalPrice = points * pricePerPoint;
// // // //     });
// // // //   }

// // // //   @override
// // // //   void initState() {
// // // //     super.initState();
// // // //     _pointsController.addListener(_updatePrice);
// // // //   }

// // // //   @override
// // // //   void dispose() {
// // // //     _pointsController.dispose();
// // // //     super.dispose();
// // // //   }

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return Scaffold(
// // // //       backgroundColor: Colors.white,
// // // //       appBar: AppBar(
// // // //         backgroundColor: Colors.transparent,
// // // //         elevation: 0,
// // // //         leading: BackButton(color: Colors.black),
// // // //         centerTitle: true,
// // // //         title: Text('Buy Points', style: TextStyle(color: Colors.black)),
// // // //       ),
// // // //       body: Padding(
// // // //         padding: const EdgeInsets.symmetric(horizontal: 24),
// // // //         child: Column(
// // // //           children: [
// // // //             SizedBox(height: 20),
// // // //             CircleAvatar(
// // // //               radius: 35,
// // // //               backgroundColor: Colors.grey.shade200,
// // // //               child: Text('P', style: TextStyle(fontSize: 30, color: Colors.blue)),
// // // //             ),
// // // //             SizedBox(height: 12),
// // // //             Text('Each point costs 1.5 TND', style: TextStyle(color: Colors.grey[600])),
// // // //             SizedBox(height: 24),
// // // //             Row(
// // // //               mainAxisAlignment: MainAxisAlignment.center,
// // // //               children: [
// // // //                 _roundedButton('-', () {
// // // //                   int current = int.tryParse(_pointsController.text) ?? 0;
// // // //                   if (current > 0) {
// // // //                     _pointsController.text = (current - 1).toString();
// // // //                   }
// // // //                 }),
// // // //                 SizedBox(width: 20),
// // // //                 Container(
// // // //                   width: 60,
// // // //                   alignment: Alignment.center,
// // // //                   child: TextField(
// // // //                     controller: _pointsController,
// // // //                     textAlign: TextAlign.center,
// // // //                     keyboardType: TextInputType.number,
// // // //                     decoration: InputDecoration(border: InputBorder.none),
// // // //                     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
// // // //                   ),
// // // //                 ),
// // // //                 SizedBox(width: 20),
// // // //                 _roundedButton('+', () {
// // // //                   int current = int.tryParse(_pointsController.text) ?? 0;
// // // //                   _pointsController.text = (current + 1).toString();
// // // //                 }),
// // // //               ],
// // // //             ),
// // // //             SizedBox(height: 16),
// // // //             Text('${_totalPrice.toStringAsFixed(2)} TND',
// // // //                 style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
// // // //             SizedBox(height: 32),
// // // //             _buildFeeRow('Bridge fee', '0.3 TND'),
// // // //             _buildFeeRow('Destination chain fee', '0.3 TND'),
// // // //             SizedBox(height: 12),
// // // //             Container(
// // // //               padding: EdgeInsets.all(12),
// // // //               decoration: BoxDecoration(
// // // //                 color: Colors.blue.shade50,
// // // //                 borderRadius: BorderRadius.circular(10),
// // // //               ),
// // // //               child: Row(
// // // //                 children: [
// // // //                   Icon(Icons.info_outline, color: Colors.blue, size: 18),
// // // //                   SizedBox(width: 8),
// // // //                   Expanded(child: Text('Bridge transaction may take up to 4 days',
// // // //                     style: TextStyle(color: Colors.blue, fontSize: 14))),
// // // //                 ],
// // // //               ),
// // // //             ),
// // // //             SizedBox(height: 32),
// // // //             _mainButton('Pay Online', Colors.blue, Colors.white),
// // // //             SizedBox(height: 12),
// // // //             _mainButton('Pay with Cash', Colors.white, Colors.blue, outlined: true),
// // // //           ],
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }

// // // //   Widget _roundedButton(String text, VoidCallback onPressed) {
// // // //     return Container(
// // // //       decoration: BoxDecoration(
// // // //         border: Border.all(color: Colors.grey.shade300),
// // // //         shape: BoxShape.circle,
// // // //       ),
// // // //       child: IconButton(
// // // //         icon: Text(text, style: TextStyle(fontSize: 20)),
// // // //         onPressed: onPressed,
// // // //       ),
// // // //     );
// // // //   }

// // // //   Widget _buildFeeRow(String label, String value) {
// // // //     return Padding(
// // // //       padding: const EdgeInsets.symmetric(vertical: 4),
// // // //       child: Row(
// // // //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // // //         children: [
// // // //           Text(label, style: TextStyle(color: Colors.grey[600])),
// // // //           Text(value, style: TextStyle(color: Colors.grey[800])),
// // // //         ],
// // // //       ),
// // // //     );
// // // //   }

// // // //   Widget _mainButton(String text, Color bgColor, Color textColor, {bool outlined = false}) {
// // // //     return SizedBox(
// // // //       width: double.infinity,
// // // //       child: ElevatedButton(
// // // //         onPressed: () {},
// // // //         style: ElevatedButton.styleFrom(
// // // //           backgroundColor: bgColor,
// // // //           foregroundColor: textColor,
// // // //           side: outlined ? BorderSide(color: Colors.blue) : BorderSide.none,
// // // //           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
// // // //           padding: EdgeInsets.symmetric(vertical: 14),
// // // //         ),
// // // //         child: Text(text, style: TextStyle(fontSize: 16)),
// // // //       ),
// // // //     );
// // // //   }
// // // // }


// // // import 'package:flutter/material.dart';

// // // class BuyPoints extends StatefulWidget {
// // //   @override
// // //   _BuyPointsState createState() => _BuyPointsState();
// // // }

// // // class _BuyPointsState extends State<BuyPoints> {
// // //   final TextEditingController _pointsController = TextEditingController(text: '20');
// // //   double _totalPrice = 30.0;
// // //   final double pricePerPoint = 1.5;

// // //   void _updatePrice() {
// // //     final points = double.tryParse(_pointsController.text) ?? 0;
// // //     setState(() {
// // //       _totalPrice = points * pricePerPoint;
// // //     });
// // //   }

// // //   @override
// // //   void initState() {
// // //     super.initState();
// // //     _pointsController.addListener(_updatePrice);
// // //   }

// // //   @override
// // //   void dispose() {
// // //     _pointsController.dispose();
// // //     super.dispose();
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       backgroundColor: Colors.white,
// // //       appBar: AppBar(
// // //         backgroundColor: Colors.white,
// // //         elevation: 0,
// // //         leading: IconButton(
// // //           icon: Icon(Icons.arrow_back_ios, color: Colors.black),
// // //           onPressed: () => Navigator.pop(context),
// // //         ),
// // //         title: Text("Buy Points", style: TextStyle(color: Colors.black)),
// // //         centerTitle: true,
// // //       ),
// // //       body: SingleChildScrollView(
// // //         padding: EdgeInsets.symmetric(horizontal: 24),
// // //         child: Column(
// // //           children: [
// // //             SizedBox(height: 20),
// // //             CircleAvatar(
// // //               radius: 35,
// // //               backgroundColor: Colors.grey.shade100,
// // //               child: Text('P', style: TextStyle(fontSize: 28, color: Colors.blue)),
// // //             ),
// // //             SizedBox(height: 10),
// // //             Text("Each point costs 1.5 TND", style: TextStyle(color: Colors.grey[600])),
// // //             SizedBox(height: 24),

// // //             /// Point selector
// // //             Row(
// // //               mainAxisAlignment: MainAxisAlignment.center,
// // //               children: [
// // //                 _quantityButton("-", () {
// // //                   int current = int.tryParse(_pointsController.text) ?? 0;
// // //                   if (current > 0) {
// // //                     _pointsController.text = (current - 1).toString();
// // //                   }
// // //                 }),
// // //                 SizedBox(width: 20),
// // //                 SizedBox(
// // //                   width: 60,
// // //                   child: TextField(
// // //                     controller: _pointsController,
// // //                     keyboardType: TextInputType.number,
// // //                     textAlign: TextAlign.center,
// // //                     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
// // //                     decoration: InputDecoration(
// // //                       border: UnderlineInputBorder(),
// // //                       isDense: true,
// // //                     ),
// // //                   ),
// // //                 ),
// // //                 SizedBox(width: 20),
// // //                 _quantityButton("+", () {
// // //                   int current = int.tryParse(_pointsController.text) ?? 0;
// // //                   _pointsController.text = (current + 1).toString();
// // //                 }),
// // //               ],
// // //             ),
// // //             SizedBox(height: 16),

// // //             /// Total price
// // //             Text(
// // //               "${_totalPrice.toStringAsFixed(2)} TND",
// // //               style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
// // //             ),
// // //             SizedBox(height: 30),

// // //             /// Fees
// // //             _buildFeeItem("Bridge fee", "0.3 TND"),
// // //             _buildFeeItem("Destination chain fee", "0.3 TND"),
// // //             SizedBox(height: 16),

// // //             /// Info box
// // //             Container(
// // //               padding: EdgeInsets.all(12),
// // //               decoration: BoxDecoration(
// // //                 color: Colors.blue.shade50,
// // //                 borderRadius: BorderRadius.circular(8),
// // //               ),
// // //               child: Row(
// // //                 children: [
// // //                   Icon(Icons.info_outline, color: Colors.blue, size: 18),
// // //                   SizedBox(width: 8),
// // //                   Expanded(
// // //                     child: Text(
// // //                       "Bridge transaction may take up to 4 days",
// // //                       style: TextStyle(color: Colors.blue.shade700, fontSize: 14),
// // //                     ),
// // //                   ),
// // //                 ],
// // //               ),
// // //             ),
// // //             SizedBox(height: 32),

// // //             /// Payment buttons
// // //             _actionButton("Pay Online", onTap: () {}, color: Colors.blue, textColor: Colors.white),
// // //             SizedBox(height: 12),
// // //             _actionButton("Pay with Cash", onTap: () {}, color: Colors.white, textColor: Colors.blue, outlined: true),
// // //             SizedBox(height: 40),
// // //           ],
// // //         ),
// // //       ),
// // //     );
// // //   }

// // //   Widget _quantityButton(String label, VoidCallback onTap) {
// // //     return InkWell(
// // //       onTap: onTap,
// // //       borderRadius: BorderRadius.circular(50),
// // //       child: Container(
// // //         decoration: BoxDecoration(
// // //           border: Border.all(color: Colors.grey.shade300),
// // //           shape: BoxShape.circle,
// // //         ),
// // //         padding: EdgeInsets.all(10),
// // //         child: Icon(
// // //           label == "+" ? Icons.add : Icons.remove,
// // //           size: 20,
// // //           color: Colors.black,
// // //         ),
// // //       ),
// // //     );
// // //   }

// // //   Widget _buildFeeItem(String label, String value) {
// // //     return Padding(
// // //       padding: const EdgeInsets.symmetric(vertical: 6.0),
// // //       child: Row(
// // //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // //         children: [
// // //           Text(label, style: TextStyle(color: Colors.grey[600])),
// // //           Text(value, style: TextStyle(color: Colors.black87)),
// // //         ],
// // //       ),
// // //     );
// // //   }

// // //   Widget _actionButton(String text,
// // //       {required VoidCallback onTap,
// // //       required Color color,
// // //       required Color textColor,
// // //       bool outlined = false}) {
// // //     return SizedBox(
// // //       width: double.infinity,
// // //       child: ElevatedButton(
// // //         onPressed: onTap,
// // //         style: ElevatedButton.styleFrom(
// // //           elevation: 0,
// // //           backgroundColor: color,
// // //           foregroundColor: textColor,
// // //           side: outlined ? BorderSide(color: Colors.blue) : BorderSide.none,
// // //           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
// // //           padding: EdgeInsets.symmetric(vertical: 16),
// // //         ),
// // //         child: Text(text, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
// // //       ),
// // //     );
// // //   }
// // // }

// // import 'package:flutter/material.dart';

// // class BuyPoints extends StatefulWidget {
// //   @override
// //   _BuyPointsState createState() => _BuyPointsState();
// // }

// // class _BuyPointsState extends State<BuyPoints> {
// //   final TextEditingController _pointsController = TextEditingController(text: '20');
// //   double _totalPrice = 30.0;
// //   final double pricePerPoint = 1.5;

// //   void _updatePrice() {
// //     final points = double.tryParse(_pointsController.text) ?? 0;
// //     setState(() {
// //       _totalPrice = points * pricePerPoint;
// //     });
// //   }

// //   @override
// //   void initState() {
// //     super.initState();
// //     _pointsController.addListener(_updatePrice);
// //   }

// //   @override
// //   void dispose() {
// //     _pointsController.dispose();
// //     super.dispose();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: Colors.white,
// //       appBar: AppBar(
// //         backgroundColor: Colors.transparent,
// //         elevation: 0,
// //         leading: IconButton(
// //           icon: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.black),
// //           onPressed: () => Navigator.pop(context),
// //         ),
// //         centerTitle: true,
// //         title: Text('Buy Points', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600)),
// //       ),
// //       body: SingleChildScrollView(
// //         padding: const EdgeInsets.symmetric(horizontal: 24),
// //         child: Column(
// //           children: [
// //             SizedBox(height: 24),
// //             CircleAvatar(
// //               radius: 36,
// //               backgroundColor: Colors.grey.shade100,
// //               child: Text('P', style: TextStyle(fontSize: 30, color: Colors.blue, fontWeight: FontWeight.w600)),
// //             ),
// //             SizedBox(height: 12),
// //             Text('Each point costs 1.5 TND', style: TextStyle(color: Colors.grey.shade600)),
// //             SizedBox(height: 28),
// //             _buildPointsSelector(),
// //             SizedBox(height: 16),
// //             Text(
// //               '${_totalPrice.toStringAsFixed(2)} TND',
// //               style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black87),
// //             ),
// //             SizedBox(height: 32),
// //             _buildFeeRow('Bridge fee', '0.3 TND'),
// //             _buildFeeRow('Destination chain fee', '0.3 TND'),
// //             SizedBox(height: 16),
// //             _buildInfoCard(),
// //             SizedBox(height: 36),
// //             _mainButton('Pay Online', bgColor: Colors.blue, textColor: Colors.white),
// //             SizedBox(height: 12),
// //             _mainButton('Pay with Cash', bgColor: Colors.white, textColor: Colors.blue, outlined: true),
// //             SizedBox(height: 24),
// //           ],
// //         ),
// //       ),
// //     );
// //   }

// //   Widget _buildPointsSelector() {
// //     return Row(
// //       mainAxisAlignment: MainAxisAlignment.center,
// //       children: [
// //         _roundedButton(Icons.remove, () {
// //           int current = int.tryParse(_pointsController.text) ?? 0;
// //           if (current > 0) _pointsController.text = (current - 1).toString();
// //         }),
// //         SizedBox(width: 20),
// //         Container(
// //           width: 70,
// //           alignment: Alignment.center,
// //           child: TextField(
// //             controller: _pointsController,
// //             textAlign: TextAlign.center,
// //             keyboardType: TextInputType.number,
// //             style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
// //             decoration: InputDecoration(
// //               isDense: true,
// //               contentPadding: EdgeInsets.symmetric(vertical: 8),
// //               border: InputBorder.none,
// //             ),
// //           ),
// //         ),
// //         SizedBox(width: 20),
// //         _roundedButton(Icons.add, () {
// //           int current = int.tryParse(_pointsController.text) ?? 0;
// //           _pointsController.text = (current + 1).toString();
// //         }),
// //       ],
// //     );
// //   }

// //   Widget _roundedButton(IconData icon, VoidCallback onPressed) {
// //     return InkWell(
// //       onTap: onPressed,
// //       borderRadius: BorderRadius.circular(30),
// //       child: Container(
// //         padding: EdgeInsets.all(10),
// //         decoration: BoxDecoration(
// //           border: Border.all(color: Colors.grey.shade300),
// //           shape: BoxShape.circle,
// //         ),
// //         child: Icon(icon, size: 22, color: Colors.black),
// //       ),
// //     );
// //   }

// //   Widget _buildFeeRow(String label, String value) {
// //     return Padding(
// //       padding: const EdgeInsets.symmetric(vertical: 6),
// //       child: Row(
// //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //         children: [
// //           Text(label, style: TextStyle(color: Colors.grey.shade600)),
// //           Text(value, style: TextStyle(color: Colors.grey.shade800)),
// //         ],
// //       ),
// //     );
// //   }

// //   Widget _buildInfoCard() {
// //     return Container(
// //       padding: EdgeInsets.all(12),
// //       decoration: BoxDecoration(
// //         color: Colors.blue.shade50,
// //         borderRadius: BorderRadius.circular(12),
// //       ),
// //       child: Row(
// //         children: [
// //           Icon(Icons.info_outline_rounded, color: Colors.blue, size: 20),
// //           SizedBox(width: 8),
// //           Expanded(
// //             child: Text(
// //               'Bridge transaction may take up to 4 days',
// //               style: TextStyle(fontSize: 14, color: Colors.blue.shade700),
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }

// //   Widget _mainButton(String label, {required Color bgColor, required Color textColor, bool outlined = false}) {
// //     return SizedBox(
// //       width: double.infinity,
// //       child: ElevatedButton(
// //         onPressed: () {},
// //         style: ElevatedButton.styleFrom(
// //           backgroundColor: bgColor,
// //           foregroundColor: textColor,
// //           elevation: outlined ? 0 : 2,
// //           side: outlined ? BorderSide(color: Colors.blue) : BorderSide.none,
// //           padding: EdgeInsets.symmetric(vertical: 14),
// //           shape: RoundedRectangleBorder(
// //             borderRadius: BorderRadius.circular(30),
// //           ),
// //         ),
// //         child: Text(label, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
// //       ),
// //     );
// //   }
// // }


// import 'package:flutter/material.dart';

// class BuyPoints extends StatefulWidget {
//   @override
//   _BuyPointsState createState() => _BuyPointsState();
// }

// class _BuyPointsState extends State<BuyPoints> {
//   final TextEditingController _pointsController = TextEditingController(text: '20');
//   double _totalPrice = 30.0;
//   final double pricePerPoint = 1.5;

//   void _updatePrice() {
//     final points = double.tryParse(_pointsController.text) ?? 0;
//     setState(() {
//       _totalPrice = points * pricePerPoint;
//     });
//   }

//   @override
//   void initState() {
//     super.initState();
//     _pointsController.addListener(_updatePrice);
//   }

//   @override
//   void dispose() {
//     _pointsController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.black),
//           onPressed: () => Navigator.pop(context),
//         ),
//         centerTitle: true,
//         title: Text(
//           'Buy Points',
//           style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
//         ),
//       ),
//       body: LayoutBuilder(
//         builder: (context, constraints) {
//           return SingleChildScrollView(
//             padding: const EdgeInsets.symmetric(horizontal: 24),
//             child: ConstrainedBox(
//               constraints: BoxConstraints(minHeight: constraints.maxHeight),
//               child: IntrinsicHeight(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     SizedBox(height: 24),
//                     CircleAvatar(
//                       radius: 36,
//                       backgroundColor: Colors.blue.withOpacity(0.05),
//                       child: Text(
//                         'P',
//                         style: TextStyle(fontSize: 30, color: Colors.blue, fontWeight: FontWeight.bold),
//                       ),
//                     ),
//                     SizedBox(height: 12),
//                     Text(
//                       'Each point costs 1.5 TND',
//                       style: TextStyle(color: Colors.grey.shade600, fontSize: 15),
//                     ),
//                     SizedBox(height: 28),
//                     _buildPointsSelector(),
//                     SizedBox(height: 16),
//                     Text(
//                       '${_totalPrice.toStringAsFixed(2)} TND',
//                       style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black),
//                     ),
//                     SizedBox(height: 32),
//                     _buildFeeRow('Bridge fee', '0.3 TND'),
//                     _buildFeeRow('Destination chain fee', '0.3 TND'),
//                     SizedBox(height: 16),
//                     _buildInfoCard(),
//                     Spacer(),
//                     _mainButton('Pay Online', bgColor: Colors.blue, textColor: Colors.white),
//                     SizedBox(height: 12),
//                     _mainButton('Pay with Cash', bgColor: Colors.white, textColor: Colors.blue, outlined: true),
//                     SizedBox(height: 32),
//                   ],
//                 ),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }

//   Widget _buildPointsSelector() {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         _circleButton(Icons.remove, () {
//           int current = int.tryParse(_pointsController.text) ?? 0;
//           if (current > 0) _pointsController.text = (current - 1).toString();
//         }),
//         SizedBox(width: 20),
//         Container(
//           width: 70,
//           child: TextField(
//             controller: _pointsController,
//             textAlign: TextAlign.center,
//             keyboardType: TextInputType.number,
//             style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
//             decoration: InputDecoration(
//               contentPadding: EdgeInsets.symmetric(vertical: 6),
//               border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey.shade300)),
//               isDense: true,
//             ),
//           ),
//         ),
//         SizedBox(width: 20),
//         _circleButton(Icons.add, () {
//           int current = int.tryParse(_pointsController.text) ?? 0;
//           _pointsController.text = (current + 1).toString();
//         }),
//       ],
//     );
//   }

//   Widget _circleButton(IconData icon, VoidCallback onPressed) {
//     return InkWell(
//       onTap: onPressed,
//       borderRadius: BorderRadius.circular(30),
//       child: Container(
//         padding: EdgeInsets.all(10),
//         decoration: BoxDecoration(
//           color: Colors.grey.shade100,
//           shape: BoxShape.circle,
//           boxShadow: [
//             BoxShadow(color: Colors.black12, blurRadius: 3, offset: Offset(0, 2))
//           ],
//         ),
//         child: Icon(icon, size: 20, color: Colors.black87),
//       ),
//     );
//   }

//   Widget _buildFeeRow(String label, String value) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 6),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Text(label, style: TextStyle(color: Colors.grey.shade600, fontSize: 15)),
//           Text(value, style: TextStyle(color: Colors.grey.shade800, fontWeight: FontWeight.w500)),
//         ],
//       ),
//     );
//   }

//   Widget _buildInfoCard() {
//     return Container(
//       padding: EdgeInsets.all(14),
//       decoration: BoxDecoration(
//         color: Colors.blue.shade50,
//         borderRadius: BorderRadius.circular(12),
//       ),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Icon(Icons.info_outline, color: Colors.blue, size: 20),
//           SizedBox(width: 10),
//           Expanded(
//             child: Text(
//               'Bridge transaction may take up to 4 days',
//               style: TextStyle(fontSize: 14, color: Colors.blue.shade700),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _mainButton(String text, {required Color bgColor, required Color textColor, bool outlined = false}) {
//     return SizedBox(
//       width: double.infinity,
//       child: ElevatedButton(
//         onPressed: () {},
//         style: ElevatedButton.styleFrom(
//           backgroundColor: bgColor,
//           foregroundColor: textColor,
//           elevation: outlined ? 0 : 3,
//           side: outlined ? BorderSide(color: Colors.blue) : BorderSide.none,
//           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
//           padding: EdgeInsets.symmetric(vertical: 16),
//         ),
//         child: Text(text, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'services/notification_service.dart';
import 'web_view_screen.dart';
import 'services/user_service.dart';

class BuyPoints extends StatefulWidget {
  @override
  _BuyPointsState createState() => _BuyPointsState();
}

class _BuyPointsState extends State<BuyPoints> {
  final TextEditingController _pointsController = TextEditingController(text: '20');
  double _totalPrice = 30.0;
  final double pricePerPoint = 1.5;

  @override
  void initState() {
    super.initState();
    _pointsController.addListener(_updatePrice);
  }

  @override
  void dispose() {
    _pointsController.dispose();
    super.dispose();
  }

  void _updatePrice() {
    final points = double.tryParse(_pointsController.text) ?? 0;
    setState(() {
      _totalPrice = points * pricePerPoint;
    });
  }

  Future<void> _payOnline() async {
    final points = double.tryParse(_pointsController.text) ?? 0;
    if (points == 0) {
      _showSnackBar('Please enter valid points');
      return;
    }

    final result = await UserService.getCheckoutSession(
      amount: _totalPrice,
      userId: "67ff369b2f63df73b4ce3f1d", // Replace with actual user ID
      points: points.toInt(),
    );

    if (result != null && result['payUrl'] != null) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => WebViewScreen(payUrl: result['payUrl']),
        ),
      );
    } else {
      _showSnackBar('Failed to start payment session');
    }
  }

  Future<void> _payWithCash() async {
    final points = double.tryParse(_pointsController.text) ?? 0;
    if (points == 0) {
      _showSnackBar('Please enter valid points');
      return;
    }

    final success = await NotificationService.addNotificationToAdmin(
      title: 'Cash Payment Request',
      content: 'User wants to buy $points points with cash.',
      points: points.toInt(),
      senderId: "67ff369b2f63df73b4ce3f1d", // Replace with actual ID
    );

    if (success) {
      _showSnackBar('Request sent to admin successfully');
    } else {
      _showSnackBar('Something went wrong. Please try again');
    }
  }

  void _showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        centerTitle: true,
        title: Text('Buy Points', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600)),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: IntrinsicHeight(
                child: Column(
                  children: [
                    SizedBox(height: 24),
                    Image.asset('assets/ppp.png', height: 100),
                    SizedBox(height: 12),
                    Text('Each point costs 1.5 TND',
                        style: TextStyle(color: Colors.black54, fontSize: 16)),
                    SizedBox(height: 24),
                    _buildPointsSelector(),
                    SizedBox(height: 16),
                    Text('${_totalPrice.toStringAsFixed(2)} TND',
                        style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                    SizedBox(height: 32),
                    _buildFeeRow('Bridge fee', '0.3 TND'),
                    _buildFeeRow('Destination chain fee', '0.3 TND'),
                    SizedBox(height: 20),
                    _buildInfoCard(),
                    Spacer(),
                    _mainButton('Pay Online', onPressed: _payOnline, filled: true),
                    SizedBox(height: 12),
                    _mainButton('Pay with Cash', onPressed: _payWithCash, filled: false),
                    SizedBox(height: 32),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildPointsSelector() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _circleButton(Icons.remove, () {
          int current = int.tryParse(_pointsController.text) ?? 0;
          if (current > 0) _pointsController.text = (current - 1).toString();
        }),
        SizedBox(width: 20),
        Container(
          width: 70,
          child: TextField(
            controller: _pointsController,
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 6),
              border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey.shade300)),
              isDense: true,
            ),
          ),
        ),
        SizedBox(width: 20),
        _circleButton(Icons.add, () {
          int current = int.tryParse(_pointsController.text) ?? 0;
          _pointsController.text = (current + 1).toString();
        }),
      ],
    );
  }

  Widget _circleButton(IconData icon, VoidCallback onPressed) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(30),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          shape: BoxShape.circle,
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 3, offset: Offset(0, 2))],
        ),
        child: Icon(icon, size: 20, color: Colors.black87),
      ),
    );
  }

  Widget _buildFeeRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: TextStyle(color: Colors.grey.shade600, fontSize: 15)),
          Text(value, style: TextStyle(color: Colors.grey.shade800, fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }

  Widget _buildInfoCard() {
    return Container(
      padding: EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.info_outline, color: Colors.blue, size: 20),
          SizedBox(width: 10),
          Expanded(
            child: Text(
              'Bridge crypto transaction may take up to 4 days to complete.',
              style: TextStyle(fontSize: 14, color: Colors.blue.shade700),
            ),
          ),
        ],
      ),
    );
  }

  Widget _mainButton(String text,
      {required VoidCallback onPressed, required bool filled}) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: filled ? Colors.blue : Colors.white,
          foregroundColor: filled ? Colors.white : Colors.blue,
          elevation: filled ? 2 : 0,
          side: filled ? null : BorderSide(color: Colors.blue),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
          padding: EdgeInsets.symmetric(vertical: 16),
        ),
        child: Text(text, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
      ),
    );
  }
}
