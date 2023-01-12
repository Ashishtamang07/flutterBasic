import 'package:flutter/material.dart';

import '../utils/myroutes.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String name = "";
  bool change = false;
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
            Text(
              "welcome $name",
              style: const TextStyle(
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
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
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
                  InkWell(
                    onTap: () async {
                      setState(() {
                        change = true;
                      });
                      await Future.delayed(const Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      height: 40,
                      width: change ? 40 : 100,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(40)),
                      child: change
                          ? const Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : const Text(
                              "login",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                    ),
                  )
                  // ElevatedButton(
                  //   onPressed: () {
                  //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //   },
                  //   style: TextButton.styleFrom(
                  //     minimumSize: const Size(90, 40),
                  //   ),
                  //   child: const Text("login"),
                  // )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
