import 'package:flutter/material.dart';
import 'package:testapp/components/custom_text_field.dart';
import 'package:testapp/controller/validation_controller.dart';
import 'package:testapp/controller/textfield_controller.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
    required this.emailcontroller,
    required this.textFieldController,
    required this.emailValidationString,
    required this.validationController,
  });

  final TextEditingController emailcontroller;
  final TextFieldController textFieldController;
  final String emailValidationString;
  final ValidationController validationController;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 50, 0, 50),
              child: Text(
                'Log in',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 150),
              child: CustomTextField(
                onChanged: (p0) {
                  emailcontroller.text.isNotEmpty
                      ? textFieldController.setTextFieldNotEmpty()
                      : textFieldController.setTextFieldEmpty();
                  emailcontroller.text.contains((RegExp(emailValidationString)))
                      ? validationController.setIsEmailValidTrue()
                      : validationController.setIsEmailValidFalse();
                },
                label: 'E-mail',
                controller: emailcontroller,
                suffixIcon: IconButton(
                  onPressed: () => {},
                  icon: const Icon(
                    Icons.cancel,
                    size: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
