import 'package:flutter/material.dart';

class IssueDemoII extends StatefulWidget {
  const IssueDemoII({super.key});

  @override
  State<IssueDemoII> createState() => _IssueDemoIIState();
}

class _IssueDemoIIState extends State<IssueDemoII> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(milliseconds: 1000), () {
        if (!mounted) return;
        showDialog(
          context: context,
          builder: (context) {
            return const AlertDialog(title: Text('Alert Dialog'));
          },
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Show Material dialog'),
      ),
    );
  }
}
