import 'package:get/get.dart';

class ValidationController extends GetxController {
 
  RxBool isEmailValid = false.obs;

  setIsEmailValidTrue() => isEmailValid.value = true;
  setIsEmailValidFalse() => isEmailValid.value = false;
}
