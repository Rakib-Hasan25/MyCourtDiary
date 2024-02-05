import 'package:get/get.dart';
import 'package:mycourtdiary/controllers/main_bottom_nav_controller.dart';

class StateHolderBinder extends Bindings{

@override
  void dependencies(){

Get.put(MainBottomNavController());
  }

}