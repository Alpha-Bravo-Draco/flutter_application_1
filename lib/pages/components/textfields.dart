import 'package:flutter/material.dart';

Widget inputStyle(String hinttext, bool isPasswordField, bool obscureText,
    void Function(bool) onObscureTextChanged,
    [TextEditingController? controller]) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
    child: Row(
      children: [
        Expanded(
          child: Container(
            // decoration: BoxDecoration(
            //   color: Colors.transparent,
            //   borderRadius: BorderRadius.circular(20),
            //   boxShadow: [
            //     BoxShadow(
            //       color: Colors.grey.withOpacity(0.2),
            //       spreadRadius: 10,
            //       blurRadius: 6,
            //     )
            //   ],
            // ),
            // height: 20,
            child: TextFormField(
              controller: controller,
              obscureText: isPasswordField ? obscureText : false,
              decoration: InputDecoration(
                labelText: hinttext,
                suffixIcon: isPasswordField
                    ? IconButton(
                        icon: Icon(
                          obscureText ? Icons.visibility : Icons.visibility_off,
                        ),
                        onPressed: () {
                          onObscureTextChanged(!obscureText);
                        },
                      )
                    : null,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
