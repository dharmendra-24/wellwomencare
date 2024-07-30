import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppointmentPage extends StatefulWidget {
  const AppointmentPage({super.key});

  @override
  _AppointmentPageState createState() => _AppointmentPageState();
}

class _AppointmentPageState extends State<AppointmentPage> {
  int selectedDateIndex = 1;
  String selectedTimeSlot = '07:30 pm';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CupertinoTabBar(
          backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
          items: [
            const BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home),
            ),
            const BottomNavigationBarItem(
                icon: Icon(Icons.search), label: 'Remwdies'),
            const BottomNavigationBarItem(
                icon: Icon(Icons.construction), label: 'Consult'),
            const BottomNavigationBarItem(
                icon: Icon(Icons.person), label: 'profile'),
          ]),
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
        ),
        title: Text(
          'Appointment',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            MonthSelector(),
            DateSelector(
              selectedDateIndex: selectedDateIndex,
              onDateSelected: (index) {
                setState(() {
                  selectedDateIndex = index;
                });
              },
            ),
            TimeSlotSelector(
              selectedTimeSlot: selectedTimeSlot,
              onTimeSlotSelected: (time) {
                setState(() {
                  selectedTimeSlot = time;
                });
              },
            ),
            // Spacer(),
            // Container(
            //   width: MediaQuery.sizeOf(context).width * 0.75,
            //   child: CupertinoButton(
            //     color: Colors.green,
            //     onPressed: () {},
            //     child: Text('Next'),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

class MonthSelector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
          ),
          onPressed: () {},
        ),
        Text(
          'September',
          style: TextStyle(
            color: Colors.green,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        IconButton(
          icon: Icon(
            Icons.arrow_forward_ios,
            size: 20,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}

class DateSelector extends StatelessWidget {
  final int selectedDateIndex;
  final Function(int) onDateSelected;

  DateSelector({required this.selectedDateIndex, required this.onDateSelected});

  @override
  Widget build(BuildContext context) {
    final dates = ['05', '06', '07', '08', '09', '10', '11'];
    final days = ['MON', 'TUE', 'WED', 'THU', 'FRI', 'SAT', 'SUN'];

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(dates.length, (index) {
        final isSelected = index == selectedDateIndex;
        return GestureDetector(
          onTap: () => onDateSelected(index),
          child: Column(
            children: [
              Text(
                days[index],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: isSelected ? Colors.green : Colors.black,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 4),
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: isSelected ? Colors.green : Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  dates[index],
                  style: TextStyle(
                    color: isSelected ? Colors.white : Colors.black,
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}

class TimeSlotSelector extends StatelessWidget {
  final String selectedTimeSlot;
  final Function(String) onTimeSlotSelected;

  TimeSlotSelector(
      {required this.selectedTimeSlot, required this.onTimeSlotSelected});

  @override
  Widget build(BuildContext context) {
    final timeSlots = [
      '07:30 pm',
      '08:30 pm',
      '06:30 pm',
      '09:30 pm',
      '05:00 pm',
      '05:30 pm'
    ];

    return Expanded(
      child: Container(
        color: Colors.green.shade200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TimeSlotSection(
              title: 'Morning Slot',
              timeSlots: timeSlots,
              selectedTimeSlot: selectedTimeSlot,
              onTimeSlotSelected: onTimeSlotSelected,
            ),
            TimeSlotSection(
              title: 'Afternoon Slot',
              timeSlots: timeSlots,
              selectedTimeSlot: selectedTimeSlot,
              onTimeSlotSelected: onTimeSlotSelected,
            ),
            TimeSlotSection(
              title: 'Evening Slot',
              timeSlots: timeSlots,
              selectedTimeSlot: selectedTimeSlot,
              onTimeSlotSelected: onTimeSlotSelected,
            ),
            Padding(
              padding: EdgeInsets.only(top: 40, left: 10),
              child: Container(
                width: MediaQuery.sizeOf(context).width * 0.7,
                child: CupertinoButton(
                  color: Colors.green,
                  onPressed: () {},
                  child: Text('Next'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TimeSlotSection extends StatelessWidget {
  final String title;
  final List<String> timeSlots;
  final String selectedTimeSlot;
  final Function(String) onTimeSlotSelected;

  TimeSlotSection(
      {required this.title,
      required this.timeSlots,
      required this.selectedTimeSlot,
      required this.onTimeSlotSelected});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 16.0, left: 16, right: 16, bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: timeSlots.map((time) {
              final isSelected = time == selectedTimeSlot;
              return GestureDetector(
                onTap: () => onTimeSlotSelected(time),
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: isSelected ? Colors.green : Colors.grey[200],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    time,
                    style: TextStyle(
                      color: isSelected ? Colors.white : Colors.black,
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
