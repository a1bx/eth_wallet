class TransactionsModel{
  final String address;
  final int amount;
  final String reason;
  final DateTime timestamp;

  TransactionsModel({required this.address, required this.amount, required this.reason, required this.timestamp});
}