import 'package:e_commerce/pages/login.dart';
import 'package:e_commerce/widgets/text_field.dart';
import 'package:flutter/material.dart';

import '../widgets/constant_colors.dart';

class Regiser extends StatelessWidget {
  const Regiser({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text_field(
                hint: "Enter your username",
                secure: false,
                type: TextInputType.text,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text_field(
                hint: "Enter your Email",
                secure: false,
                type: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text_field(
                hint: "Enter your password",
                secure: true,
                type: TextInputType.text,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: const MaterialStatePropertyAll(btngreen),
                  padding: const MaterialStatePropertyAll(EdgeInsets.all(12)),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                child: const Text(
                  "Register",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Do not have an account?',
                    style: TextStyle(fontSize: 20),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context){
                          return const Login();}),
                        );},
                    child: const Text(
                      "Sign in",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
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
