// import 'package:calendar/event.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:navigo_app/Screens/HomePage/Calender/event_cal.dart';
import 'package:navigo_app/Screens/HomePage/home.dart';
import 'package:navigo_app/constants.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarScreen extends StatefulWidget {
  @override
  _CalendarScreenState createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  late Map<DateTime, List<Event>> selectedEvents;
  CalendarFormat format = CalendarFormat.month;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();

  //TextEditingController _eventController = TextEditingController();

  @override
  void initState() {
    selectedEvents = {};
    super.initState();
  }

  List<Event> _getEventsfromDay(DateTime date) {
    return selectedEvents[date] ?? [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text("Calendar"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            TableCalendar(
              focusedDay: selectedDay,
              firstDay: DateTime(2023),
              lastDay: DateTime(2050),
              calendarFormat: format,
              onFormatChanged: (CalendarFormat _format) {
                setState(() {
                  format = _format;
                });
              },
              startingDayOfWeek: StartingDayOfWeek.sunday,
              daysOfWeekVisible: true,

              //Day Changed
              onDaySelected: (DateTime selectDay, DateTime focusDay) {
                setState(() {
                  selectedDay = selectDay;
                  focusedDay = focusDay;
                });
              },
              selectedDayPredicate: (DateTime date) {
                return isSameDay(selectedDay, date);
              },

              eventLoader: _getEventsfromDay,

              //To style the Calendar
              calendarStyle: CalendarStyle(
                isTodayHighlighted: true,
                selectedDecoration: BoxDecoration(
                  color: kPrimaryColor,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                selectedTextStyle: TextStyle(color: Colors.white),
                todayDecoration: BoxDecoration(
                  color: Colors.purpleAccent,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                defaultDecoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                weekendDecoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              headerStyle: HeaderStyle(
                formatButtonVisible: false,
                titleCentered: true,
                formatButtonShowsNext: false,
                formatButtonDecoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                formatButtonTextStyle: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ..._getEventsfromDay(selectedDay).map(
              (Event event) => ListTile(
                title: Text(
                  event.title,
                ),
                trailing: IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {
                    setState(() {
                      selectedEvents[selectedDay]?.remove(event);
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: kPrimaryColor,
        onPressed: () => Get.to(HomePage()),
        // showDialog(
        //   context: context,
        //   builder: (context) => AlertDialog(
        //     title: Text("Add Event", style: TextStyle(color: kPrimaryColor)),
        //     content: TextFormField(
        //       controller: _eventController,
        //     ),
        //     actions: [
        //       TextButton(
        //         child: Text("Cancel", style: TextStyle(color: kPrimaryColor)),
        //         onPressed: () => Navigator.pop(context),
        //       ),
        //       TextButton(
        //         child: Text("Ok", style: TextStyle(color: kPrimaryColor)),
        //         onPressed: () {
        //           if (_eventController.text.isEmpty) {
        //           } else {
        //             if (selectedEvents[selectedDay] != null) {
        //               selectedEvents[selectedDay]?.add(
        //                 Event(title: _eventController.text),
        //               );
        //             } else {
        //               selectedEvents[selectedDay] = [
        //                 Event(title: _eventController.text)
        //               ];
        //             }
        //           }
        //           Navigator.pop(context);
        //           _eventController.clear();
        //           setState(() {});
        //           return;
        //         },
        //       ),
        //     ],
        //   ),
        // ),
        label: Text("Add Event"),
        icon: Icon(Icons.add),
      ),
    );
  }
}