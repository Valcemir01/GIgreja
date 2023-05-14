import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldCuston extends StatefulWidget {
  final IconData icon;
  final String label;
  final bool isSecret;
  final List<TextInputFormatter>? inputFormattes;
  final TextInputType? keyboardTypes;

  const TextFieldCuston({
    Key? key,
    required this.icon,
    required this.label,
    this.keyboardTypes,
    this.isSecret = false,
    this.inputFormattes,
  }) : super(key: key);

  @override
  State<TextFieldCuston> createState() => _TextFieldCustonState();
}

class _TextFieldCustonState extends State<TextFieldCuston> {
  bool isObscureText = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isObscureText = widget.isSecret;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: TextFormField(
        inputFormatters: widget.inputFormattes,
        obscureText: isObscureText,
        keyboardType: widget.keyboardTypes,
        decoration: InputDecoration(
          label: Text(widget.label,),
          prefixIcon: Icon(widget.icon,),
          suffixIcon: widget.isSecret
              ? IconButton(
                  onPressed: () {
                    setState(
                      () {
                        isObscureText = !isObscureText;
                      },
                    );
                  },
                  icon: Icon(
                      isObscureText ? Icons.visibility : Icons.visibility_off,),
                )
              : null,
          isDense: true,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
        ),
      ),
    );
  }
}
