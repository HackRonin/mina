import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../app/config/app_color.dart';

class AddTransaction extends StatefulWidget {
  const AddTransaction({Key? key}) : super(key: key);

  @override
  _AddTransactionState createState() => _AddTransactionState();
}

class _AddTransactionState extends State<AddTransaction> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.primaryColor,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          backgroundColor: AppColor.primaryColor,
          elevation: 0,
          title: const Text(
            'Add Transaction',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.only(
            top: 30,
            left: 25,
            right: 25,
            bottom: 20,
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                TextField(
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                    hintText: 'Title',
                    filled: true,
                    fillColor: AppColor.bgColor,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                    hintText: 'Amount',
                    filled: true,
                    fillColor: AppColor.bgColor,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                    hintText: 'Transaction type',
                    filled: true,
                    fillColor: AppColor.bgColor,
                    suffixIcon: const Icon(
                      Icons.keyboard_arrow_down,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                    hintText: 'Tags',
                    filled: true,
                    fillColor: AppColor.bgColor,
                    suffixIcon: const Icon(
                      Icons.keyboard_arrow_down,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                    hintText: 'When',
                    filled: true,
                    fillColor: AppColor.bgColor,
                    suffixIcon: const Icon(
                      Icons.today,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                TextField(
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                    hintText: 'Note',
                    filled: true,
                    fillColor: AppColor.bgColor,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: AppColor.fabBtnColor,
                  ),
                  onPressed: () {},
                  child: const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 90.0,
                      vertical: 15.0,
                    ),
                    child: Text(
                      'ADD TRANSACTION',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
