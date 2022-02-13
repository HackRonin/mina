import 'package:get/get.dart';
import 'package:mina/presentation/controllers/expense_controller.dart';

class AppBindings extends Bindings{
  @override
  void dependencies() {
    Get.put(ExpenseController(), permanent: true);
  }

}