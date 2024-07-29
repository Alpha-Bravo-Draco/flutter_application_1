import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/components/textfields.dart';
import 'package:flutter_application_1/pages/login.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool _obscureText = true;
  String name = " ";
  final TextEditingController _usernamecotroller = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _usernamecotroller.addListener(() {
      setState(() {
        name = _usernamecotroller.text;
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _usernamecotroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 188, 238, 255),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(70),
                      bottomLeft: Radius.circular(70))),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(25, 25, 25, 25),
                child: Center(
                    child: Text(
                  "Welcome to the Family $name",
                  style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                )),
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            inputStyle("Email", false, _obscureText, (bool value) {
              setState(() {
                _obscureText = value;
              });
            }, _usernamecotroller),
            const SizedBox(
              height: 30,
            ),
            inputStyle("Password", true, _obscureText, (bool value) {
              setState(() {
                _obscureText = value;
              });
            }),
            const SizedBox(
              height: 30,
            ),
            inputStyle("confirm Password", true, _obscureText, (bool value) {
              setState(() {
                _obscureText = value;
              });
            }),
            Padding(
              padding: const EdgeInsets.fromLTRB(90, 10, 50, 10),
              child: Row(
                children: [
                  const Text("Have an account already   |"),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Login()));
                      },
                      child: const Text("Login"))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
