import 'package:flutter/material.dart';

class AddCustomerPage extends StatefulWidget {
  const AddCustomerPage({super.key});

  @override
  State<AddCustomerPage> createState() => _AddCustomerPageState();
}

class _AddCustomerPageState extends State<AddCustomerPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New Customer'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 800),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildSectionTitle(context, 'Customer Details'),
                  const SizedBox(height: 16),
                  _buildCustomerDetailsForm(),
                  const SizedBox(height: 24),
                  const Divider(),
                  const SizedBox(height: 16),
                  _buildSectionTitle(context, 'Guarantor 1 Details'),
                  const SizedBox(height: 16),
                  _buildGuarantorForm(1),
                  const SizedBox(height: 24),
                  const Divider(),
                  const SizedBox(height: 16),
                  _buildSectionTitle(context, 'Guarantor 2 Details'),
                  const SizedBox(height: 16),
                  _buildGuarantorForm(2),
                  const SizedBox(height: 32),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[300],
                          foregroundColor: Colors.black87,
                        ),
                        child: const Text('Cancel'),
                      ),
                      const SizedBox(width: 16),
                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            // TODO: Implement save logic
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text('Customer saved successfully!')),
                            );
                            Navigator.pop(context);
                          }
                        },
                        child: const Text('Save Customer'),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(BuildContext context, String title) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            color: Theme.of(context).colorScheme.primary,
          ),
    );
  }

  Widget _buildCustomerDetailsForm() {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 2,
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Full Name',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a full name';
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              flex: 1,
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'National ID (NIC)',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a NIC';
                  }
                  // More complex validation will be added later
                  return null;
                },
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Date of Birth',
            border: OutlineInputBorder(),
            hintText: 'Automatically filled from NIC',
          ),
          readOnly: true, // This will be auto-filled
        ),
        const SizedBox(height: 16),
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Residential Address',
            border: OutlineInputBorder(),
          ),
           validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter an address';
            }
            return null;
          },
        ),
        const SizedBox(height: 16),
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Phone Number(s)',
            border: OutlineInputBorder(),
            hintText: 'e.g., 0700000000, 0711111111',
          ),
           validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter at least one phone number';
            }
            return null;
          },
        ),
         const SizedBox(height: 16),
        OutlinedButton.icon(
          onPressed: () {
            // TODO: Implement image picker
          },
          icon: const Icon(Icons.camera_alt),
          label: const Text('Upload Customer Photo'),
          style: OutlinedButton.styleFrom(
            minimumSize: const Size(double.infinity, 50),
          ),
        )
      ],
    );
  }

  Widget _buildGuarantorForm(int guarantorNumber) {
    return Column(
      children: [
        TextFormField(
          decoration: InputDecoration(
            labelText: 'Guarantor $guarantorNumber: Full Name',
            border: const OutlineInputBorder(),
          ),
           validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter guarantor name';
            }
            return null;
          },
        ),
        const SizedBox(height: 16),
        TextFormField(
          decoration: InputDecoration(
            labelText: 'Guarantor $guarantorNumber: National ID (NIC)',
            border: const OutlineInputBorder(),
          ),
           validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter guarantor NIC';
            }
            return null;
          },
        ),
        const SizedBox(height: 16),
        TextFormField(
          decoration: InputDecoration(
            labelText: 'Guarantor $guarantorNumber: Phone Number',
            border: const OutlineInputBorder(),
            hintText: '0700000000'
          ),
           validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter guarantor phone number';
            }
            return null;
          },
        ),
        const SizedBox(height: 16),
        TextFormField(
          decoration: InputDecoration(
            labelText: 'Guarantor $guarantorNumber: Residential Address',
            border: const OutlineInputBorder(),
          ),
           validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter guarantor address';
            }
            return null;
          },
        ),
         const SizedBox(height: 16),
        OutlinedButton.icon(
          onPressed: () {
            // TODO: Implement image picker
          },
          icon: const Icon(Icons.camera_alt),
          label: Text('Upload Guarantor $guarantorNumber Photo'),
           style: OutlinedButton.styleFrom(
            minimumSize: const Size(double.infinity, 50),
          ),
        )
      ],
    );
  }
}
