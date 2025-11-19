class Guarantor {
  final String fullName;
  final String nic;
  final String phoneNumber;
  final String address;
  final String? photoPath;

  Guarantor({
    required this.fullName,
    required this.nic,
    required this.phoneNumber,
    required this.address,
    this.photoPath,
  });
}
