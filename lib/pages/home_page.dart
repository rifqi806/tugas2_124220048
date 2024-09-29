import 'package:flutter/material.dart';
import 'package:tugas2_124220048/pages/details_page.dart';
import 'package:tugas2_124220048/pages/login_page.dart';
import 'package:tugas2_124220048/pages/summary_page.dart';

class HomePage extends StatelessWidget {
  final String username;

  const HomePage({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome $username!'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()),
              );
            },
            color: Colors.white,
          ),
        ],
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Selamat datang di Home Page!'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsPage(name: username),
                  ),
                );
              },
              child: const Text('Go to Details Page'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const SummaryPage(data: 'This is summary page'),
                  ),
                );
              },
              child: const Text('Replace with Summary Page'),
            ),
          ],
        ),
      ),
    );
  }
}
