import 'package:flutter/material.dart';

import '../enumerations.dart';
import '../extension.dart';
import '../widgets/day_view_widget.dart';
import '../widgets/responsive_widget.dart';
import 'create_event_page.dart';

class DayViewPageDemo extends StatefulWidget {
  const DayViewPageDemo({super.key});

  @override
  _DayViewPageDemoState createState() => _DayViewPageDemoState();
}

class _DayViewPageDemoState extends State<DayViewPageDemo> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      mobileWidget: Scaffold(
        // floatingActionButton: FloatingActionButton(
        //   child: Icon(Icons.add),
        //   elevation: 8,
        //   onPressed: () => context.pushRoute(CreateEventPage()),
        // ),
        body: DayViewWidget(),
      ),
    );
  }
}
