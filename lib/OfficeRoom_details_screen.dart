import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
// import 'package:intl/intl.dart';

class OfficeRoomReservationScreen extends StatefulWidget {
  final Map<String, dynamic> room;

  const OfficeRoomReservationScreen({Key? key, required this.room}) : super(key: key);

  @override
  _OfficeRoomReservationScreenState createState() => _OfficeRoomReservationScreenState();
}

class _OfficeRoomReservationScreenState extends State<OfficeRoomReservationScreen> {
  DateTime? selectedDate;
  String? checkInTime;
  String? checkOutTime;
  DateTime focusedDay = DateTime.now();
  List<Map<String, dynamic>> reservations = [];
  bool isLoading = false;
  String paymentMethod = 'points';
  int userPoints = 0;
  int totalPrice = 0;
  final List<String> _allTimeSlots = [];

  @override
  void initState() {
    super.initState();
    _generateTimeSlots();
    _fetchUserPoints();
  }

  void _generateTimeSlots() {
    _allTimeSlots.clear();
    for (int h = 8; h < 24; h++) {
      _allTimeSlots.add('${h.toString().padLeft(2, '0')}:00');
      _allTimeSlots.add('${h.toString().padLeft(2, '0')}:30');
    }
  }

  int _timeToMinutes(String time) {
    final parts = time.split(':');
    return int.parse(parts[0]) * 60 + int.parse(parts[1]);
  }

  String _minutesToTime(int minutes) {
    final h = (minutes ~/ 60).toString().padLeft(2, '0');
    final m = (minutes % 60).toString().padLeft(2, '0');
    return '$h:$m';
  }

  Future<void> _fetchReservationsForDate(DateTime date) async {
    if (date == null) return;

    setState(() {
      isLoading = true;
      reservations = [];
      checkInTime = null;
      checkOutTime = null;
      totalPrice = 0;
    });

    try {
      final resp = await http.get(
        Uri.parse(
            'http://localhost:8000/ELACO/booking/getReservationPrivateOffice'),
        headers: {'Content-Type': 'application/json'},
      );

      if (resp.statusCode == 200) {
        final decoded = json.decode(resp.body);
        List<Map<String, dynamic>> allReservations = [];

        if (decoded is Map &&
            decoded['data'] is List &&
            decoded['data'].isNotEmpty) {
          if (decoded['data'][0] is List) {
            allReservations =
                List<Map<String, dynamic>>.from(decoded['data'][0]);
          } else {
            allReservations = List<Map<String, dynamic>>.from(decoded['data']);
          }
        }

        setState(() {
          reservations = allReservations.where((res) {
            try {
              final resDateStr = res['date'].toString().split('T')[0];
              final resDate = DateTime.parse(resDateStr);
              final selectedDateOnly =
                  DateTime(date.year, date.month, date.day);
              return resDate == selectedDateOnly;
            } catch (e) {
              print('Error parsing reservation date: $e');
              return false;
            }
          }).toList();
        });
      } else {
        throw Exception('Failed to fetch reservations: ${resp.statusCode}');
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error loading reservations: ${e.toString()}')),
      );
    } finally {
      setState(() => isLoading = false);
    }
  }

  bool _isRangeAvailable(int start, int end) {
    for (final reservation in reservations) {
      final resStart = _timeToMinutes(reservation['check_in']);
      final resEnd = _timeToMinutes(reservation['check_out']);
      if (start < resEnd && end > resStart) {
        return false;
      }
    }
    return true;
  }

  List<String> get availableTimeSlots {
    return _allTimeSlots.where((slot) {
      final start = _timeToMinutes(slot);
      final end = start + 60;
      return _isRangeAvailable(start, end);
    }).toList();
  }

  List<String> get availableCheckOutSlots {
    if (checkInTime == null) return [];
    final checkInMinutes = _timeToMinutes(checkInTime!);
    List<String> valid = [];

    for (int i = checkInMinutes + 30; i <= 1440; i += 30) {
      if (i - checkInMinutes < 60) continue;
      if (_isRangeAvailable(checkInMinutes, i)) {
        valid.add(_minutesToTime(i));
      } else {
        break;
      }
    }

    return valid;
  }

  void _calculatePrice() {
    if (checkInTime == null || checkOutTime == null) {
      setState(() => totalPrice = 0);
      return;
    }

    final start = _timeToMinutes(checkInTime!);
    final end = _timeToMinutes(checkOutTime!);
    final durationHours = (end - start) / 60;

    // try {
    //   // final prices = widget.room['prices'] as List;
    //   // final hourly =
    //   //     (prices.firstWhere((p) => p['duration'] == '1h')['price'] as num)
    //   //         .toInt();

    //   int price;
    //   // if (durationHours == 2) {
    //   //   price =
    //   //       (prices.firstWhere((p) => p['duration'] == '2h')['price'] as num)
    //   //           .toInt();
    //   // } else if (durationHours == 5) {
    //   //   price =
    //   //       (prices.firstWhere((p) => p['duration'] == '1/2 Day (5h)')['price']
    //   //               as num)
    //   //           .toInt();
    //   // } else {
    //   //   price = (durationHours * hourly).round();
    //   // }

    //   price = durationHours*5 as int;

    //   setState(() => totalPrice = price);
    // } catch (e) {
    //   print('Error calculating price: $e');
    //   setState(() => totalPrice = 0);
    // }

    // try {
      // Simple fixed price calculation - $5 per hour
      // Make sure durationHours is valid
      if (durationHours > 0) {
        setState(() => totalPrice = (durationHours * 5).round());
      } else {
        setState(() => totalPrice = (durationHours * 5).round());
      }
    // } catch (e) {
      // print('Error calculating price: $e');
      // setState(() => totalPrice = 0);
    // }
  }

  Future<void> _fetchUserPoints() async {
    setState(() => isLoading = true);
    try {
      const userId = 'someUserId';
      final resp = await http.get(
        Uri.parse('http://localhost:8000/ELACO/Points/$userId'),
        headers: {'Content-Type': 'application/json'},
      );

      if (resp.statusCode == 200) {
        final data = json.decode(resp.body);
        if (data is Map && data.containsKey('points')) {
          setState(() => userPoints = (data['points'] as num).toInt());
        }
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to load points: ${e.toString()}')),
      );
    } finally {
      setState(() => isLoading = false);
    }
  }

  Future<void> _onReserve() async {
    if (selectedDate == null || checkInTime == null || checkOutTime == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please select date and time')),
      );
      return;
    }

    final start = _timeToMinutes(checkInTime!);
    final end = _timeToMinutes(checkOutTime!);
    final duration = end - start;

    if (duration < 60 || duration % 30 != 0) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Reservation must be at least 1 hour')),
      );
      return;
    }

    if (paymentMethod == 'points' && userPoints * 1.5 < totalPrice) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Not enough points for this booking')),
      );
      return;
    }

    setState(() => isLoading = true);

    try {
      final bookingData = {
        'date': selectedDate!.toIso8601String().split('T')[0],
        'check_in': checkInTime,
        'check_out': checkOutTime,
        'id_user': 'someUserId',
        'numTable': widget.room['numTable'],
        'price': paymentMethod == 'points' ? 0 : totalPrice,
        'paymentMethod': paymentMethod,
        'points': paymentMethod == 'points'
            ? (userPoints - (totalPrice / 1.5)).floor()
            : userPoints,
      };

      final resp = await http.post(
        Uri.parse('http://localhost:8000/ELACO/booking/'),
        headers: {'Content-Type': 'application/json'},
        body: json.encode(bookingData),
      );

      if (resp.statusCode == 201) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Booking successful!')),
        );
        Navigator.pop(context, true);
      } else {
        throw Exception('Booking failed: ${resp.statusCode}');
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Booking failed: ${e.toString()}')),
      );
    } finally {
      setState(() => isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Book Room'),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  elevation: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: TableCalendar(
                      firstDay: DateTime.now(),
                      lastDay: DateTime.now().add(const Duration(days: 365)),
                      focusedDay: focusedDay,
                      selectedDayPredicate: (day) => day == selectedDate,
                      onDaySelected: (day, focusedDay) async {
                        setState(() {
                          this.focusedDay = focusedDay;
                          selectedDate = day;
                        });
                        await _fetchReservationsForDate(day);
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Check-in Time'),
                          DropdownButtonFormField<String>(
                            value: checkInTime,
                            items: availableTimeSlots
                                .map((time) => DropdownMenuItem(
                                    value: time, child: Text(time)))
                                .toList(),
                            onChanged: (value) {
                              setState(() {
                                checkInTime = value;
                                checkOutTime = null;
                                _calculatePrice();
                              });
                            },
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Select time',
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Check-out Time'),
                          DropdownButtonFormField<String>(
                            value: checkOutTime,
                            items: availableCheckOutSlots
                                .map((time) => DropdownMenuItem(
                                    value: time, child: Text(time)))
                                .toList(),
                            onChanged: (value) {
                              setState(() {
                                checkOutTime = value;
                                _calculatePrice();
                              });
                            },
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Select time',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Card(
                  elevation: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Payment Method'),
                        RadioListTile(
                          title: const Text('Use Points'),
                          value: 'points',
                          groupValue: paymentMethod,
                          onChanged: (value) {
                            setState(() {
                              paymentMethod = value.toString();
                              _calculatePrice();
                            });
                          },
                        ),
                        RadioListTile(
                          title: const Text('Pay Online'),
                          value: 'online',
                          groupValue: paymentMethod,
                          onChanged: (value) {
                            setState(() {
                              paymentMethod = value.toString();
                              _calculatePrice();
                            });
                          },
                        ),
                        if (paymentMethod == 'points')
                          Text('Available Points: $userPoints'),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Card(
                  elevation: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Total Price'),
                        Text(
                          '\$$totalPrice',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: isLoading ? null : _onReserve,
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                    ),
                    child: isLoading
                        ? const CircularProgressIndicator()
                        : const Text('RESERVE NOW'),
                  ),
                ),
              ],
            ),
          ),
          if (isLoading) const Center(child: CircularProgressIndicator()),
        ],
      ),
    );
  }
}
