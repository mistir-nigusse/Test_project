import 'package:get/get.dart';

class TextFieldController extends GetxController {
 
  RxBool isTextFieldNotEmpty = false.obs;

  setTextFieldNotEmpty() => isTextFieldNotEmpty.value = true;
  setTextFieldEmpty() =>  setTextFieldNotEmpty().value = false;
}
