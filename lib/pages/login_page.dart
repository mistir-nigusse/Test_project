import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testapp/components/bottom_container.dart';
import 'package:testapp/components/login_form.dart';
import 'package:testapp/controller/validation_controller.dart';
import 'package:testapp/controller/textfield_controller.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String emailValidationString = r"^.+@.+\..+$";
  final ValidationController validationController =
      Get.put(ValidationController());

  final TextFieldController textFieldController =
      Get.put(TextFieldController());

  TextEditingController emailcontroller = TextEditingController();

  @override
  void dispose() {
    emailcontroller.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: BottomContainer(validationController: validationController),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
        child:
              LoginForm(
                  emailcontroller: emailcontroller,
                  textFieldController: textFieldController,
                  emailValidationString: emailValidationString,
                  validationController: validationController),
         
        ),
      ),
    );
  }
}
