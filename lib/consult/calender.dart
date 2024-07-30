import 'package:flutter/material.dart';

class CalendarPage extends StatelessWidget {
  final List<Map<String, String>> appointments = [
    {'date': '10', 'title': 'Appointment Dr. Jane Doe'},
    {'date': '12', 'title': 'Pharmacy; Dr. Ayon'},
    {'date': '15', 'title': 'Report Dr. Vishnoi'},
    {'date': '17', 'title': 'Report Dr. Vishnoi'},
    {'date': '20', 'title': 'Pharmacy; Dr. Ayon'},
    {'date': '20', 'title': 'Report Dr. Vishnoi'},
    {'date': '22', 'title': 'Report Dr. Vishnoi'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[100],
        title: const Text('Calendar', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        color: Colors.green[100],
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.calendar_today, color: Colors.black),
                    SizedBox(width: 8),
                    Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text('2023 January',
                            style: TextStyle(color: Colors.black))),
                  ],
                ),
                Row(
                  children: [
                    Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child:
                            Text('All', style: TextStyle(color: Colors.black))),
                    SizedBox(width: 8),
                    Icon(Icons.filter_list, color: Colors.black),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: 31, // January has 31 days
                itemBuilder: (context, index) {
                  int day = index + 1;
                  String dayString = day.toString().padLeft(2, '0');
                  Map<String, String>? appointment = appointments.firstWhere(
                    (appointment) => appointment['date'] == dayString,
                    orElse: () => {},
                  );

                  return CalendarItem(
                    date: dayString,
                    title: appointment.isNotEmpty ? appointment['title']! : '',
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_pharmacy),
            label: 'Remedies',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt),
            label: 'Consult',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
      ),
    );
  }
}

class CalendarItem extends StatelessWidget {
  final String date;
  final String title;

  const CalendarItem({required this.date, required this.title});

  bool get hasAppointment => title.isNotEmpty;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Container(
            width: 40,
            alignment: Alignment.centerRight,
            child: Text(date, style: const TextStyle(color: Colors.black)),
          ),
          const SizedBox(width: 16), // Spacing between date and title
          Expanded(
            child: hasAppointment
                ? Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(title,
                        style: const TextStyle(color: Colors.black)),
                  )
                : Container(
                    height: 2,
                    color: Colors.green,
                  ),
          ),
        ],
      ),
    );
  }
}
