import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class Calender extends StatelessWidget {
  const Calender({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          elevation: 0.0,
          backgroundColor: Colors.white,
          actions: [
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Image.asset(
                'images/ptcl_logo.png',
                width: 100,
              ),
            ]),
          ],
        ),
        body: SfCalendar(
          view: CalendarView.week,
          firstDayOfWeek: 6,
          // initialDisplayDate: DateTime(
          //   2022,
          //   03,
          //   01,
          //   08,
          //   30,
          // ),
          // initialSelectedDate: DateTime(
          //   2022,
          //   03,
          //   01,
          //   08,
          //   30,
          // ),
          dataSource: MeetingDataSource(getAppointments()),
        ),
      ),
    );
  }
}

List<Appointment> getAppointments() {
  List<Appointment> meetings = <Appointment>[];
  final DateTime today = DateTime.now();
  final DateTime startTime =
      DateTime(today.year, today.month, today.day, 9, 0, 0);
  final DateTime endTime = startTime.add(const Duration(hours: 2));
  meetings.add(Appointment(
      startTime: startTime,
      endTime: endTime,
      subject: 'Conference',
      color: Colors.blue,
      recurrenceRule: 'FREQ = DAILY;COUNT=10',
      isAllDay: true));
  return meetings;
}

class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(List<Appointment> source) {
    appointments = source;
  }
}
