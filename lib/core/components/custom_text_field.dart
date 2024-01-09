import 'package:flutter/material.dart';
import 'package:profit/core/constant/colors.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController controller;
  final String label;
  final Function(String value)? onChanged;
  final bool obscureText;

  const CustomTextField({
    Key? key,
    required this.controller,
    required this.label,
    this.onChanged,
    required this.obscureText,
  }) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _obscure = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      height: 50.0,
      decoration: BoxDecoration(
        color: AppColors.white,
        border: Border.all(
          color: const Color(0xFFE2E8F0),
        ),
        borderRadius: BorderRadius.circular(25),
      ),
      child: TextFormField(
        controller: widget.controller,
        onChanged: widget.onChanged,
        obscureText: widget.obscureText ? _obscure : false,
        decoration: InputDecoration(
          suffixIcon: widget.obscureText
              ? IconButton(
                  // ignore: prefer_const_constructors
                  padding: EdgeInsets.symmetric(vertical: 0),
                  onPressed: () {
                    setState(() {
                      _obscure = !_obscure;
                    });
                  },
                  icon: Icon(
                    _obscure ? Icons.visibility : Icons.visibility_off,
                    size: 22,
                    color: const Color(0xFF64748B),
                  ),
                )
              : null,
          contentPadding: const EdgeInsets.all(10),
          hintText: widget.label,
          hintStyle: const TextStyle(color: Color(0xFF64748B), fontSize: 14),
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
