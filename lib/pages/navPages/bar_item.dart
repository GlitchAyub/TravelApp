

import 'package:flutter/material.dart';

class BarItem extends StatelessWidget {
  const BarItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(
        child: Text("Bar Item"),
      ),
    );
  }
}