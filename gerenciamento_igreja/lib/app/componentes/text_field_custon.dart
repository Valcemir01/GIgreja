import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldCuston extends StatefulWidget {
  final IconData icon;
  final String label;
  final bool isSecret;
  final String? erro;
  final bool? enabled;
  final List<TextInputFormatter>? inputFormattes;
  final TextInputType? keyboardTypes;
  final Function(String)? onChangeds;

  TextFieldCuston({
    Key? key,
    required this.icon,
    required this.label,
    this.enabled,
    this.erro,
    this.onChangeds,
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
  void initState(){
    // TODO: implement initState
    super.initState();
    isObscureText = widget.isSecret;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: TextField(
        inputFormatters: widget.inputFormattes,
        obscureText: isObscureText,
        keyboardType: widget.keyboardTypes,
        onChanged: widget.onChangeds,
        enabled: widget.enabled,
        style: const TextStyle(color: Color(0xff2d5986),),
        decoration: InputDecoration(
          errorText: widget.erro,
          label: Text(
            overflow: TextOverflow.ellipsis,
            widget.label,
            style: const TextStyle(color: Color(0xff2d5986)),
          ),
          prefixIcon: Icon(
            widget.icon,
            color: const Color(0xff2d5986),
          ),
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
                    isObscureText ? Icons.visibility : Icons.visibility_off, color: const Color(0xff2d5986),
                  ),
                )
              : null,
          isDense: true,
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.orange,
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xff2d5986),
              width: 2,
            ),
          ),
        ),
      ),
    );
  }
}
