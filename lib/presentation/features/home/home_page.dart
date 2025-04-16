import 'package:flutter/material.dart';
import 'package:demo_app/core/widgets/app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final String _title = 'HomePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(title: _title),
      drawer: Drawer(
        child: ListView(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/settings');
              },
              child: SizedBox(
                height: 75,
                child: Row(
                  children: [Icon(Icons.settings_outlined), Text('Settings')],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        onPressed: () {
          Navigator.pushNamed(context, '/camera');
        },
        child: Icon(Icons.camera_alt_outlined),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8,
        child: Text('BottomAppBar'),
      ),
    );
  }
}
