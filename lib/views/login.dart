import 'package:flutter/material.dart';
import 'package:telfili/utils/hex_color.dart';
import 'package:telfili/utils/methods.dart';
import 'package:telfili/views/homepage.dart';
import 'package:telfili/views/sign_up.dart';
import 'package:telfili/views/tabview.dart';

class Login extends StatefulWidget {
  const Login({Key key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();

}

class _LoginState extends State<Login> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.fromLTRB(28, 65, 28, 35),
          child: Column(
            children: [
              Image.asset("assets/images/text logo.png", width: 150, height: 70,),
              Image.asset("assets/images/baby logo.png", width: 205, height: 180,),
              Container(height: 35,),
              Container(
                alignment: Alignment.center,
                height: 45,
                child: TextField(
                  style: const TextStyle(
                    color: Colors.black,
                    fontFamily: 'futura-regular',
                    fontSize: 18,
                  ),
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                    hintText: "Username",
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                      fontFamily: 'futura-regular',
                      fontSize: 18,
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    )
                  ),
                ),
              ),
              Container(height: 15,),
              Container(
                height: 45,
                alignment: Alignment.center,
                child: TextField(
                  obscureText: true,
                  style: const TextStyle(
                    color: Colors.black,
                    fontFamily: 'futura-regular',
                    fontSize: 18,
                  ),
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                        fontFamily: 'futura-regular',
                        fontSize: 18,
                      ),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      )
                  ),
                ),
              ),
              Container(height: 20,),
              MaterialButton(
                onPressed: () {
                  Navigator.pushReplacement(context, slideLeft(const TabView()));
                },
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                padding: const EdgeInsets.fromLTRB(50, 5, 50, 5),
                color: HexColor("#FF66C4"),
                child: Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width - 20,
                  child: const Text(
                    "Sign in",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontFamily: 'futura-medium'
                    ),
                  ),
                ),
              ),
              Container(height: 10,),
              const Text("Forgot password?", style: TextStyle(
                color: Colors.grey,
                fontFamily: 'futura-regular',
                fontSize: 18,
                decoration: TextDecoration.underline,
              ),),
              Container(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 1,
                    width: MediaQuery.of(context).size.width / 2 - 50,
                    color: HexColor("#077CF2"),
                  ),
                  Text("  OR  ", style: TextStyle(color: HexColor("#077CF2"), fontSize: 18, fontFamily: 'futura-bold'),),
                  Container(
                    height: 1,
                    width: MediaQuery.of(context).size.width / 2 - 50,
                    color: HexColor("#077CF2"),
                  ),
                ],
              ),
              Container(height: 10,),
              MaterialButton(
                onPressed: () {
                  Navigator.push(context, slideLeft(const SignUp()));
                },
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                padding: const EdgeInsets.fromLTRB(50, 5, 50, 5),
                color: HexColor("#FF66C4"),
                child: Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width - 20,
                  child: const Text(
                    "Sign up",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontFamily: 'futura-medium'
                    ),
                  ),
                ),
              ),
              Container(height: 10,),
              MaterialButton(
                onPressed: () {
                  Navigator.pushReplacement(context, slideLeft(const TabView()));
                },
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                padding: const EdgeInsets.fromLTRB(50, 5, 50, 5),
                color: HexColor("#077CF2"),
                child: Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width - 20,
                  child: const Text(
                    "Continue as guest",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontFamily: 'futura-medium'
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }

}
