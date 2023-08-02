import 'package:flutter/material.dart';

import 'myInput.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  late double width;
  late double height;

  Color colorButton(Set<MaterialState> state) {

    const Set<MaterialState> interactiveState = <MaterialState>{
      MaterialState.pressed,
      MaterialState.focused
    };

    if(state.any(interactiveState.contains)) {
      return Colors.white.withOpacity(0.8);
    }

    return Colors.white;
  }

  @override
  Widget build(BuildContext context) {

    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;


    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: width,
          height: height,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFF72AEF6), Color(0xFF2D81E3)],
              )),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: height * 0.05,
                ),
                const Text(
                  "Sing Up",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.1),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      MyInput(
                        title: "Full Name",
                        hintText: "Enter your Name",
                        prefixIcon: Icons.person_2_outlined,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      MyInput(
                        title: "Phone No",
                        hintText: "Enter your Phone no",
                        prefixIcon: Icons.phone_android,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      MyInput(
                        title: "Email",
                        hintText: "Enter your Email",
                        prefixIcon: Icons.email_outlined,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      MyInput(
                        title: "Password",
                        hintText: "Enter your Password",
                        prefixIcon: Icons.key_outlined,
                        obscureText: true,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      MyInput(
                        title: "Confirm Password",
                        hintText: "Confirm Password",
                        prefixIcon: Icons.key_outlined,
                        obscureText: true,
                      ),
                      const SizedBox(height: 30,),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              offset: const Offset(0, 5),
                              blurRadius: 5,
                            ),
                          ],
                        ),
                        child: FilledButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            padding: const MaterialStatePropertyAll(
                              EdgeInsets.symmetric(
                                vertical: 5,
                              ),
                            ),
                            backgroundColor:
                            // MaterialStatePropertyAll<Color>(Colors.white),
                            MaterialStateProperty.resolveWith(colorButton),

                          ),
                          child: const Text(
                            "REGISTER",
                            style: TextStyle(
                              color: Color(0xFF3184E3),
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Have an Account ?",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        "Sign in",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
