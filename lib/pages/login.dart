
import 'package:e_commerce/pages/home.dart';
import 'package:e_commerce/pages/register.dart';
import 'package:e_commerce/widgets/constant_colors.dart';
import 'package:e_commerce/widgets/text_field.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              const Text_field(
                hint: "enter your name",
                secure: false,
                type: TextInputType.text,
                ),
              const SizedBox(
                height: 10,
              ),
              const Text_field(
              hint: 'enter your password',
              secure: true,
              type: TextInputType.text,
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: (){
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context){
                    return const Home();}),
                    );
                },
                style: ButtonStyle(
                  backgroundColor: const MaterialStatePropertyAll(btngreen),
                  padding: const MaterialStatePropertyAll(EdgeInsets.all(12)),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius:BorderRadius.circular(10),),),
                ),
                child:
                  const Text("sign in",
                    style: TextStyle(fontSize: 20),
                  ),  
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Do not have an account?',style: TextStyle(fontSize: 20),),
                  TextButton(
                    onPressed: (){
                      Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context){
                    return const Regiser();}),
                    );
                    },
                    child: const Text("Sign up",style: TextStyle(color: Colors.black,fontSize: 20,),),
                    ),
                ],
              )
            ]),
        ),
      ),
    );
  }
}