import 'package:flutter/material.dart';
import 'package:test_app/utils/myroutes.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      // color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "asset/image/login.png",
              fit: BoxFit.contain,
              height: 300,
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Login page",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: " enter username",
                      labelText: "username",
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: " enter password",
                      labelText: "password",
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    style: TextButton.styleFrom(
                      minimumSize: const Size(90, 40),
                    ),
                    child: const Text("login"),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
