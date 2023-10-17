import 'package:flutter/material.dart';

Widget buildTextField(
    String label, String prefix, TextEditingController controller, Function(String) function) {
  return TextField(
    controller: controller,
    keyboardType: TextInputType.numberWithOptions(decimal: true),
    decoration: InputDecoration(
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        borderSide: BorderSide(color: Colors.amber),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      labelText: label,
      labelStyle: TextStyle(
        color: Colors.amber,
      ),
      prefixText: prefix,
    ),
    style: TextStyle(color: Colors.amber),
    onChanged: function,
  );
}
