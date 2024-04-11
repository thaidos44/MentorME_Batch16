import 'package:batch_16/gen/assets.gen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          margin: const EdgeInsets.only(top: 50),
          alignment: Alignment.center,
          child: Column(children: [
            const Text(
              'Create Account',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Assets.asset1.image(
                width: 88,
                height: 88,
              ),
            ),
            const Text(
              'Create Account with',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AccountHolder(
                  image: Assets.github.image(
                    width: 43,
                    height: 43,
                  ),
                ),
                AccountHolder(
                  image: Assets.google.image(
                    width: 43,
                    height: 43,
                  ),
                ),
                AccountHolder(
                  image: Assets.linkedin.image(
                    width: 43,
                    height: 43,
                  ),
                ),
              ],
            ),
            const Text(
              'or',
              style: TextStyle(
                fontWeight: FontWeight.w400,
              ),
            ),
            IconTextFieldRow(
              image: Assets.user.path,
              hint: 'Name',
            ),
            IconTextFieldRow(
              image: Assets.email.path,
              hint: 'Email',
            ),
            IconTextFieldRow(
              image: Assets.password.path, hint: 'Password',
              //suffiximage: Assets.showpassword
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: null,
                    child: Text(
                      'Signup',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromRGBO(39, 1, 74, 1)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: const EdgeInsets.only(top: 7.0)),
                  const Text(
                    'or',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                  Padding(padding: const EdgeInsets.only(bottom: 7.0)),
                  const Text(
                    'Already have an account?',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                  Padding(padding: const EdgeInsets.all(15.0)),
                  const Text('Login', style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Color.fromRGBO(2, 55, 104, 1),
                  ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

class AccountHolder extends StatelessWidget {
  const AccountHolder({super.key, required this.image});
  final Image image;

  @override
  Widget build(BuildContext context) => Container(
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
          BoxShadow(
            blurRadius: 40,
            blurStyle: BlurStyle.outer,
            offset: Offset(1, 2),
            color: Colors.black.withOpacity(0.3),
          )
        ]),
        child: image,
      );
}

class IconTextFieldRow extends StatelessWidget {
  const IconTextFieldRow({required this.image, required this.hint, super.key});

  final String image;
  final String hint;
  //final Image? suffiximage;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
        child: Row(
          children: [
            Image.asset(image, width: 26, height: 28),
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      offset: Offset(1, 2),
                      blurRadius: 10,
                    )
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(8.0),
                    hintText: hint,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
}
