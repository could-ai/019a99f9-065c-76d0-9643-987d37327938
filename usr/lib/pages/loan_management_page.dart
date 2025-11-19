import 'package:flutter/material.dart';
import 'package:couldai_user_app/widgets/side_menu.dart';

class LoanManagementPage extends StatelessWidget {
  const LoanManagementPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Loan Management'),
      ),
      drawer: const SideMenu(),
      body: const Center(
        child: Text('Loan Management Page'),
      ),
    );
  }
}
