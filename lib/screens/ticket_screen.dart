import 'package:flutter/material.dart';

import '../utils/app_layout.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            children: [],
          ),
        ],
      ),
    );
  }
}
