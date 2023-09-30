import 'package:flutter/material.dart';
import 'package:testapp/components/custom_text_button.dart';
import 'package:get/get.dart';
import 'package:testapp/controller/validation_controller.dart';

class BottomContainer extends StatelessWidget {
  const BottomContainer({
    super.key,
    required this.validationController,
  });

  final ValidationController validationController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 7.5,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomTextButton(
                  text: "Find e-mail",
                  onPressed: () {},
                ),
                const Text(' | '),
                CustomTextButton(
                  text: "Find password",
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(
                height: MediaQuery.of(context).size.height / 18,
                width: MediaQuery.of(context).size.width,
                child: Obx(
                  () => ElevatedButton(
                    onPressed: () {
                      print('Enter email address');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: validationController.isEmailValid.value
                          ? Colors.black
                          : Color.fromARGB(255, 199, 198, 198),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text(
                        validationController.isEmailValid.value
                            ? 'Next'
                            : 'Enter your e-mail address',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
