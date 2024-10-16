import 'package:flutter/material.dart';

import '../../extension.dart';
import '../day_view_page.dart';

class MobileHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Calendar Page"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () => context.pushRoute(DayViewPageDemo()),
              child: Text("Day View"),
            ),
          ],
        ),
      ),
    );
  }
}
