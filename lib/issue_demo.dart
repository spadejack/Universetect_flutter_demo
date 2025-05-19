

import 'package:flutter/material.dart';

class IssueDemo extends StatelessWidget {

  const IssueDemo({super.key});

  void _showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          title: Text('Alert Dialog'),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Show Material dialog'),
          const SizedBox(height: 44),
          ElevatedButton(
              onPressed: () => _showAlertDialog(context),
              child: const Text('Show Material dialog')
          )
        ],
      ),
    );
  }
}