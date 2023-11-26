import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:work_0/pages/home/home_pagee.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final passwordController = TextEditingController();
  final _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Form(
          key: _key,
          child: ListView(
            padding: EdgeInsets.all(16),
            children: [
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  label: const Text("Name"),
                  hintText: 'Full name',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Write your name";
                  }
                },
              ),
              const SizedBox(
                height: 16,
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  label: const Text("Email"),
                  hintText: 'forxmpel@gmail.com',
                ),
                validator: (value) {
                  var checkEmail = RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$");
                  if (!checkEmail.hasMatch(value ?? "")) {
                    return "Wrong email";
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 16,
              ),
              TextFormField(
                controller: TextEditingController(),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  label: const Text("Password"),
                ),
                validator: (value) {
                  var checkPassword = RegExp(
                      r"^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$");
                  if (!checkPassword.hasMatch(value ?? "")) {
                    return "Wrong email";
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 16,
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  label: const Text("Confis password"),
                ),
                validator: (value) {
                  if ((value ?? "") == passwordController.text) {
                    return "not passsword";
                  }
                  ;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(double.maxFinite, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                onPressed: () {
                  var result = _key.currentState!.validate();
                  if (result) {
                    Navigator.pushAndRemoveUntil(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                      (context)=>false,
                    );
                  }
                },
                child: const Text(
                  "SIGN UP",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
