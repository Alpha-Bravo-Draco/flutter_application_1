import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/signup.dart';
import 'package:flutter_application_1/pages/components/textfields.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _obscureText = true;
  String name = "";
  bool changeButton = false;
  final TextEditingController _usernameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // TODO: implement initState

    _usernameController.addListener(() {
      setState(() {
        name = _usernameController.text;
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _usernameController.dispose();
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
              height: 200,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(70),
                      bottomLeft: Radius.circular(70))),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 50.0, top: 20),
                child: Image.asset('assets/logo.png'),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              "Welcome $name",
              style: const TextStyle(
                  color: Color.fromARGB(255, 121, 124, 119),
                  fontSize: 30,
                  fontWeight: FontWeight.w900),
            ),
            const SizedBox(
              height: 70,
            ),
            inputStyle("Username", false, _obscureText, (bool value) {
              setState(() {
                _obscureText = value;
              });
            }, _usernameController),
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
            InkWell(
              onTap: () async {
                setState(() {
                  changeButton = true;
                });
                await Future.delayed(const Duration(seconds: 1));
                await Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Signup()));
                setState(() {
                  changeButton = false;
                });
              },
              child: AnimatedContainer(
                // color: Colors.amber,
                height: 50,
                width: changeButton ? 50 : 100,
                alignment: Alignment.center,
                duration: (const Duration(seconds: 1)),

                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(50)),
                child: changeButton
                    ? const Icon(Icons.done)
                    : const Text(
                        "Sign in",
                        style:
                            TextStyle(color: Color.fromARGB(255, 53, 58, 49)),
                      ),
              ),
            ),
            // ElevatedButton(
            //   onPressed: () {
            //     print('login button pressed');
            //   },
            //   style: ElevatedButton.styleFrom(
            //       foregroundColor: Colors.black87,
            //       backgroundColor: Colors.amber,
            //       padding:
            //           const EdgeInsets.symmetric(horizontal: 80, vertical: 20),
            //       shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(20))),
            //   child: const Text(
            //     "Login",
            //     style: TextStyle(fontSize: 17),
            //   ),
            // ),
            const SizedBox(
              height: 20,
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(100, 10, 50, 10),
                child: Row(
                  children: [
                    const Text("Don't have an account   |"),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Signup()));
                        },
                        child: const Text("Sign up"))
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
