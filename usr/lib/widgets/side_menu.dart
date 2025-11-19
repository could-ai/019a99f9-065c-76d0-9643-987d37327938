import 'package:flutter/material.dart';
import 'package:couldai_user_app/pages/customer_management_page.dart';
import 'package:couldai_user_app/pages/dashboard_page.dart';
import 'package:couldai_user_app/pages/loan_management_page.dart';
import 'package:couldai_user_app/pages/login_page.dart';
import 'package:couldai_user_app/pages/reports_page.dart';
import 'package:couldai_user_app/pages/settings_page.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
            ),
            child: const Text(
              'SN Investments',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.dashboard),
            title: const Text('Dashboard'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const DashboardPage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.people),
            title: const Text('Customer Management'),
            onTap: () {
               Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const CustomerManagementPage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.monetization_on),
            title: const Text('Loan Management'),
            onTap: () {
               Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const LoanManagementPage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.assessment),
            title: const Text('Reports & Analytics'),
            onTap: () {
               Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const ReportsPage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {
               Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const SettingsPage()),
              );
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Logout'),
            onTap: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()),
                (Route<dynamic> route) => false,
              );
            },
          ),
        ],
      ),
    );
  }
}
