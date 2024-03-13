import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:money_track/customs/boton.dart';
import 'package:money_track/customs/textField.dart';
import 'package:lottie/lottie.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/fondo.png",
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Scrollbar(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Lottie.asset(
                        'assets/login.json') /*SizedBox(
                      width: MediaQuery.of(context).size.width * 0.6,
                      height: MediaQuery.of(context).size.height * 0.3,
                      child: Image.asset(
                        'assets/login.gif',
                        fit: BoxFit.cover,
                      ),
                    )*/
                    ,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: Container(
                      width: 345,
                      height: 63,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/titulo.png",
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 20.0,
                    ),
                    child: Card(
                      color: Colors.white,
                      surfaceTintColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(
                          16.0,
                        ),
                      ),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Text(
                                  "Ingresar",
                                  style: GoogleFonts.lato(
                                    textStyle: Theme.of(context)
                                        .textTheme
                                        .displayLarge,
                                    fontSize: Get.height * 0.05,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                top: 8.0,
                                right: 20.0,
                                left: 20.0,
                              ),
                              child: CustomInput(
                                nombreCampo: "Usuario",
                                icono: Icons.person,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 40.0,
                                right: 40.0,
                                bottom: 8.0,
                                top: 5.0,
                              ),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: SizedBox(
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        bottom: 2,
                                        left: 0,
                                        right: 0,
                                        child: Container(
                                          height: 1.0,
                                          color: Colors.blue,
                                        ),
                                      ),
                                      Text(
                                        "Olvidé mi usuario",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          inherit: true,
                                          fontSize: 13.0,
                                          foreground: Paint()
                                            ..style = PaintingStyle.stroke
                                            ..strokeWidth = 2
                                            ..color = Colors.white,
                                        ),
                                      ),
                                      const Text(
                                        "Olvidé mi usuario",
                                        style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.w300,
                                          inherit: true,
                                          fontSize: 13.0,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                top: 8.0,
                                right: 20.0,
                                left: 20.0,
                              ),
                              child: CustomInput(
                                nombreCampo: "Contraseña",
                                icono: Icons.lock,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 40.0,
                                right: 40.0,
                                bottom: 8.0,
                                top: 5.0,
                              ),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: SizedBox(
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        bottom: 2,
                                        left: 0,
                                        right: 0,
                                        child: Container(
                                          height: 1.0,
                                          color: Colors.blue,
                                        ),
                                      ),
                                      Text(
                                        "Olvidé mi contraseña",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          inherit: true,
                                          fontSize: 13.0,
                                          foreground: Paint()
                                            ..style = PaintingStyle.stroke
                                            ..strokeWidth = 2
                                            ..color = Colors.white,
                                        ),
                                      ),
                                      const Text(
                                        "Olvidé mi contraseña",
                                        style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.w300,
                                          inherit: true,
                                          fontSize: 13.0,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 20.0,
                                vertical: 10.0,
                              ),
                              child: CustomBoton(
                                nombreBoton: 'Log In',
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                left: 20.0,
                                right: 20.0,
                                bottom: 2.0,
                                top: 20.0,
                              ),
                              child: Text(
                                "1. Cumple con las polítcas de uso de la app.",
                                style: TextStyle(
                                  fontSize: 11.0,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 20.0,
                                vertical: 2.0,
                              ),
                              child: Text(
                                "2. Cuida tu usuario y contraseña.",
                                style: TextStyle(
                                  fontSize: 11.0,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 20.0,
                                vertical: 2.0,
                              ),
                              child: Text(
                                "3. Recuerda notificar cualquier inconveniente con tu administrado.",
                                style: TextStyle(
                                  fontSize: 11.0,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: Get.height * 0.04,
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
