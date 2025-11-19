import 'package:flutter/material.dart';
import 'package:couldai_user_app/models/customer.dart';
import 'package:couldai_user_app/models/guarantor.dart';
import 'package:couldai_user_app/pages/add_customer_page.dart';
import 'package:couldai_user_app/widgets/side_menu.dart';

class CustomerManagementPage extends StatefulWidget {
  const CustomerManagementPage({super.key});

  @override
  State<CustomerManagementPage> createState() => _CustomerManagementPageState();
}

class _CustomerManagementPageState extends State<CustomerManagementPage> {
  // Dummy data for demonstration purposes
  final List<Customer> _customers = [
    Customer(
      fullName: 'John Doe',
      nic: '891022158V',
      dateOfBirth: DateTime(1989, 4, 11),
      address: '123 Main St, Colombo',
      phoneNumbers: ['0771234567'],
      guarantors: [
        Guarantor(
            fullName: 'Jane Smith',
            nic: '901234567V',
            phoneNumber: '0717654321',
            address: '456 Galle Rd, Colombo'),
        Guarantor(
            fullName: 'Peter Jones',
            nic: '887654321V',
            phoneNumber: '0723456789',
            address: '789 Kandy Rd, Colombo'),
      ],
    ),
     Customer(
      fullName: 'Nimal Silva',
      nic: '921022158V',
      dateOfBirth: DateTime(1992, 4, 11),
      address: '321 Park St, Kandy',
      phoneNumbers: ['0777654321'],
      guarantors: [
        Guarantor(
            fullName: 'Sunil Perera',
            nic: '911234567V',
            phoneNumber: '0765432109',
            address: '654 Lake Rd, Kandy'),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Customer Management'),
      ),
      drawer: const SideMenu(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Customer List',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: DataTable(
                columns: const [
                  DataColumn(label: Text('NIC')),
                  DataColumn(label: Text('Full Name')),
                  DataColumn(label: Text('Phone Number')),
                  DataColumn(label: Text('Actions')),
                ],
                rows: _customers.map((customer) {
                  return DataRow(cells: [
                    DataCell(Text(customer.nic)),
                    DataCell(Text(customer.fullName)),
                    DataCell(Text(customer.phoneNumbers.join(', '))),
                    DataCell(Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.edit),
                          onPressed: () {
                            // TODO: Implement edit functionality
                          },
                          tooltip: 'Edit Customer',
                        ),
                        IconButton(
                          icon: const Icon(Icons.visibility),
                          onPressed: () {
                            // TODO: Implement view details functionality
                          },
                          tooltip: 'View Details',
                        ),
                         IconButton(
                          icon: const Icon(Icons.monetization_on),
                          onPressed: () {
                            // TODO: Implement add new loan functionality
                          },
                          tooltip: 'Add New Loan',
                        ),
                      ],
                    )),
                  ]);
                }).toList(),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddCustomerPage()),
          );
        },
        label: const Text('Add New Customer'),
        icon: const Icon(Icons.add),
      ),
    );
  }
}
