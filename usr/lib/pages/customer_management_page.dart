import 'package:flutter/material.dart';
import 'package:couldai_user_app/widgets/side_menu.dart';

class CustomerManagementPage extends StatelessWidget {
  const CustomerManagementPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Customer Management'),
      ),
      drawer: const SideMenu(),
      body: const Center(
        child: Text('Customer Management Page'),
      ),
    );
  }
}
