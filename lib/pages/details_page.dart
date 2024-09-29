import 'package:flutter/material.dart';
import 'package:tugas2_124220048/pages/summary_page.dart';

class DetailsPage extends StatelessWidget {
  final String name;

  const DetailsPage({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome, $name!'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go Back'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SummaryPage(data: 'Data from $name'),
                  ),
                );
              },
              child: const Text('Go to Summary Page'),
            ),
          ],
        ),
      ),
    );
  }
}
