import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({Key? key}) : super(key: key);

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool obsecureText = true;
void _changeLoading(){
 obsecureText=!obsecureText;
}
  @override
  Widget build(BuildContext context) {
    return TextField(
      autofillHints: [AutofillHints.password],
      keyboardType: TextInputType.visiblePassword,
      obscureText: obsecureText,
      obscuringCharacter: "*",
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: "Password",
        suffixIcon:IconButton(onPressed: (){setState(() {
         _changeLoading();
        });}, icon:obsecureText? Icon(Icons.visibility_outlined): Icon(Icons.visibility_off_outlined))
      ),
    );
  }
}
