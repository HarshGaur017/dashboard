import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class DashboardPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFF5F6FA),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Color(0xFF2C2F48),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'GENERAL 10:00 AM TO 7:00 PM',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  CalendarWidget(),
                ],
              ),
            ),
            SizedBox(height: 20),
            BirthdayAnniversaryCard(
              title: 'Today Birthday',
              total: 2,
              buttonText: 'Birthday Wishing',
              avatars: ['assets/images/b1.png', 'assets/images/b2.png'],
              cardColor: Color(0xFF454974),
            ),
            SizedBox(height: 20),
            BirthdayAnniversaryCard(
              title: 'Anniversary',
              total: 3,
              buttonText: 'Anniversary Wishing',
              avatars: [
                'assets/images/b1.png',
                'assets/images/b2.png',
                'assets/images/b3.png'
              ],
              cardColor: Color(0xFF454974),
            ),
          ],
        ),
      ),
    );
  }
}

class CalendarWidget extends StatefulWidget {
  @override
  State<CalendarWidget> createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends State<CalendarWidget> {
  DateTime today = DateTime.now();
  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.all(12.0),
      child: TableCalendar(
        rowHeight: 43,
        headerStyle:
            HeaderStyle(formatButtonVisible: false, titleCentered: true),
        availableGestures: AvailableGestures.all,
        selectedDayPredicate: (day) => isSameDay(day, today),
        focusedDay: today,
        firstDay: DateTime.utc(2010, 10, 16),
        lastDay: DateTime.utc(2040, 12, 31),
        onDaySelected: _onDaySelected,
      ),
    );
  }
}

class BirthdayAnniversaryCard extends StatelessWidget {
  final String title;
  final int total;
  final String buttonText;
  final List<String> avatars;
  final Color cardColor;

  BirthdayAnniversaryCard({
    required this.title,
    required this.total,
    required this.buttonText,
    required this.avatars,
    required this.cardColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              Icon(Icons.star, color: Colors.yellowAccent),
              Icon(Icons.star, color: Colors.yellowAccent),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: avatars
                .map((avatar) => Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage(avatar),
                      ),
                    ))
                .toList(),
          ),
          SizedBox(height: 10),
          Text(
            'Total: $total',
            style: TextStyle(color: Colors.white.withOpacity(0.8)),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF9E88FF),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            onPressed: () {},
            child: Center(
              child: Text(buttonText),
            ),
          ),
        ],
      ),
    );
  }
}
