import 'package:hive/hive.dart';

part 'expense.g.dart';
@HiveType(typeId: 6)
class Expense{
  
  @HiveField(0)
  final String title;
  @HiveField(1)
  final double amount;
  @HiveField(2)
  final String transactionType;
  @HiveField(3)
  final String tag;
  @HiveField(4)
  final String descImg;
  @HiveField(5)
  final String date;
  @HiveField(6)
  final String timeStamp;
  @HiveField(7)
  final String id;
  @HiveField(8)
  final String note;

  Expense({required this.date, required this.descImg, required this.amount,required this.id,
    required this.note, required this.timeStamp, required this.tag, required this.title,
    required this.transactionType});


  Expense.fromJson(Map json):
      title = json['title'],
       amount = json['amount'],
       transactionType = json['transactionType'],
       tag = json['tag'],
       descImg = json['descImg'],
       timeStamp = json['timeStamp'],
        id = json['id'],
         note = json['note'],
        date = json['date'];

  toJson(){
    return {
      'title':title,
       'amount' : amount,
        'transactionType':transactionType,
         'tag':tag,
          "descImg":descImg,
         'timeStamp':timeStamp,
      'date':date,
      'note':note,
      'id':id,
    };
  }
}