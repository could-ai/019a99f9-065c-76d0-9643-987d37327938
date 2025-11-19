import 'package:flutter/material.dart';
import 'package:couldai_user_app/widgets/side_menu.dart';

class ReportsPage extends StatelessWidget {
  const ReportsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reports & Analytics'),
      ),
      drawer: const SideMenu(),
      body: const Center(
        child: Text('Reports & Analytics Page'),
      ),
    );
  }
}
