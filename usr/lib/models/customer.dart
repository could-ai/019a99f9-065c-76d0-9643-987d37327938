class Customer {
  final String fullName;
  final String nic;
  final DateTime dateOfBirth;
  final String address;
  final List<String> phoneNumbers;
  final String? photoPath;
  final List<Guarantor> guarantors;

  Customer({
    required this.fullName,
    required this.nic,
    required this.dateOfBirth,
    required this.address,
    required this.phoneNumbers,
    this.photoPath,
    required this.guarantors,
  });
}
