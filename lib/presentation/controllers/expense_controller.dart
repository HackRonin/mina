import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:mina/data/model/expense.dart';


class ExpenseController extends GetxController{

  var selectedDate = DateTime.now().obs;
  var totalTransaction = <Expense>[].obs;
  var expenses = [].obs;
  var incomes = [].obs;

  late TextEditingController titleController, amountController, noteController;


  @override
  onInit() {
    try {
      Hive.registerAdapter(ExpenseAdapter());
    } catch (e) {
      print(e);
    }
    //getTodos();
    super.onInit();
  }

  addExpense(Expense expense) async{
    totalTransaction.add(expense);
    var box = await Hive.openBox('db');
    box.put('todos', totalTransaction.toList());
    print("To Do Object added $totalTransaction");
  }

  Future getExpenses() async {
    Box box;
    print("Getting todos");
    try {
      box = Hive.box('db');
    } catch (error) {
      box = await Hive.openBox('db');
      print(error);
    }

    deleteExpense(Expense expense) async {
      totalTransaction.remove(expense);
      var box = await Hive.openBox('db');
      box.put('todos', totalTransaction.toList());
    }

    toggleExpense(Expense expense) async {
      var index = totalTransaction.indexOf(expense);
      var editExpense = totalTransaction[index];

      if (editExpense.transactionType == "income") {
        incomes.add(editExpense);
        expenses.remove(editExpense);
      } else {
        incomes.remove(editExpense);
        expenses.add(editExpense);
      }
      totalTransaction[index] = editExpense;
      var box = await Hive.openBox('db');
      box.put('todos', totalTransaction.toList());
    }

    chooseDate() async {
      DateTime? pickedDate = await showDatePicker(
        context: Get.context!,
        initialDate: selectedDate.value,
        firstDate: DateTime(2000),
        lastDate: DateTime(2024),
        //initialEntryMode: DatePickerEntryMode.input,
        // initialDatePickerMode: DatePickerMode.year,
        helpText: 'Select DOB',
        cancelText: 'Close',
        confirmText: 'Confirm',
        errorFormatText: 'Enter valid date',
        errorInvalidText: 'Enter valid date range',
        fieldLabelText: 'DOB',
        fieldHintText: 'Month/Date/Year',
        //selectableDayPredicate: disableDate
      );
      if (pickedDate != null && pickedDate != selectedDate.value) {
        selectedDate.value = pickedDate;
      }
    }

    bool disableDate(DateTime day) {
      if ((day.isAfter(DateTime.now().subtract(const Duration(days: 1))) &&
          day.isBefore(DateTime.now().add(const Duration(days: 5))))) {
        return true;
      }
      return false;
    }
  }
}