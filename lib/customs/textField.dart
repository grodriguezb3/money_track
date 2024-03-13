import 'package:flutter/material.dart';

class CustomInput extends StatefulWidget {
  final String nombreCampo;

  final IconData? icono;

  const CustomInput({super.key, required this.nombreCampo, this.icono});

  @override
  State<CustomInput> createState() => _CustomInputState();
}

class _CustomInputState extends State<CustomInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: TextFormField(
        decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          labelText: widget.nombreCampo,
          prefixIcon: Icon(
            widget.icono,
          ),
          labelStyle: TextStyle(
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
