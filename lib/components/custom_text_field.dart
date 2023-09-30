import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testapp/controller/textfield_controller.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final Widget suffixIcon;
  final Function(String) onChanged;

  final TextFieldController textFieldController =
      Get.put(TextFieldController());

  CustomTextField(
      {super.key, required this.label,
      required this.controller,
      required this.suffixIcon,
      required this.onChanged,
      e});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 11,
      child: TextField(
        style: const TextStyle(
            color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        controller: controller,
        onChanged: onChanged,
        decoration: InputDecoration(
          suffixIconColor: Colors.grey,
          labelStyle:
              const TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
          labelText: label,
          suffixIcon: Obx(
            () => Visibility(
              visible: textFieldController.isTextFieldNotEmpty.value,
              child: suffixIcon,
            ),
          ),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 2.0,
            ),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 2.0,
            ),
          ),
        ),
      ),
    );
  }
}
