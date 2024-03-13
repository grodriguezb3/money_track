import 'package:flutter/material.dart';

class CustomBoton extends StatefulWidget {
  final String nombreBoton;
  final Function? onPressed;
  const CustomBoton({
    super.key,
    required this.nombreBoton,
    this.onPressed,
  });

  @override
  _CustomBotonState createState() => _CustomBotonState();
}

class _CustomBotonState extends State<CustomBoton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0, 10),
            blurRadius: 25.0,
          )
        ],
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: const [0.0, 1.0],
          colors: [
            Colors.blue.shade900,
            Colors.blue.shade700,
          ],
        ),
        color: Colors.blue.shade300,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: MaterialButton(
        onPressed: () {
          if (widget.onPressed != null) {
            widget.onPressed!();
          } else {
            print('Sin Evento');
          }
        },
        elevation: 2,
        minWidth: 400,
        height: 50,
        textColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            15.0,
          ),
        ), //since this is only a UI app
        child: Text(
          widget.nombreBoton,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
