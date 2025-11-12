import 'package:get/get.dart';
import 'package:xgenious_assignment/features/common/ui/controller/main_bottom_nav_controller.dart';

class ControllerBinder extends Bindings {
  @override
  void dependencies() {
    Get.put(MainBottomNavController());
  }
}
