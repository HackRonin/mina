class ExpenseModel{
  final String title;
  final String tag;
  final String descImg;
  final double amount;
  final String date;
  final String transactionType;
  final String timeStamp;

  ExpenseModel({required this.date, required this.descImg, required this.amount,
    required this.timeStamp, required this.tag, required this.title, required this.transactionType});
}