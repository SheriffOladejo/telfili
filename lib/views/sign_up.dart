import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:telfili/utils/hex_color.dart';
import 'package:telfili/utils/methods.dart';

import 'terms_and_condition.dart';


class SignUp extends StatefulWidget {

  const SignUp({Key key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();

}

class _SignUpState extends State<SignUp> {

  // Boolean variable that controls the click of baby sitter options
  bool baby_sitter = true;

  // Boolean variable that controls the click of gender options
  bool female = true;

  // Boolean variable that controls when show password is clicked
  bool show_password = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.fromLTRB(15, 50, 15, 20),
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset("assets/images/tefli.png", width: 145, height: 110,),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(width: 18,),
                      Image.asset("assets/images/li.png", width: 145, height: 110,),
                    ],
                  )
                ],
              ),
              Container(height: 20,),
              Row(
                children: [
                  SizedBox(
                    width: 160,
                    child: CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      contentPadding: EdgeInsets.zero,
                      value: baby_sitter,
                      onChanged: (value) {
                        setState(() {
                          baby_sitter = !baby_sitter;
                        });
                      },
                      title: Transform.translate(
                        offset: const Offset(-20, 0),
                        child: const Text("I am a baby sitter", style: TextStyle(
                          color: Colors.black26,
                          fontSize: 14,
                          fontFamily: 'futura-regular',
                        ),),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 170,
                    child: CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      contentPadding: EdgeInsets.zero,
                      value: !baby_sitter,
                      onChanged: (value) {
                        setState(() {
                          baby_sitter = !baby_sitter;
                        });
                      },
                      title: Transform.translate(
                        offset: const Offset(-20, 0),
                        child: const Text("Looking for a babysitter", style: TextStyle(
                          color: Colors.black26,
                          fontSize: 14,
                          fontFamily: 'futura-regular',
                        ),),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 45,
                child: TextField(
                  style: const TextStyle(
                    color: Colors.black,
                    fontFamily: 'futura-regular',
                    fontSize: 18,
                  ),
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                    hintText: "First name",
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
              Container(height: 10,),
              SizedBox(
                height: 45,
                child: TextField(
                  style: const TextStyle(
                    color: Colors.black,
                    fontFamily: 'futura-regular',
                    fontSize: 18,
                  ),
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                      hintText: "Last name",
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
              Row(
                children: [
                  SizedBox(
                    width: 100,
                    child: CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      contentPadding: EdgeInsets.zero,
                      value: female,
                      onChanged: (value) {
                        setState(() {
                          female = !female;
                        });
                      },
                      title: Transform.translate(
                        offset: const Offset(-20, 0),
                        child: const Text("Female", style: TextStyle(
                          color: Colors.black26,
                          fontSize: 14,
                          fontFamily: 'futura-regular',
                        ),),
                      )
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    child: CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      contentPadding: EdgeInsets.zero,
                      value: !female,
                      onChanged: (value) {
                        setState(() {
                          female = !female;
                        });
                      },
                      title: Transform.translate(
                        offset: const Offset(-20, 0),
                        child: const Text("Male", style: TextStyle(
                          color: Colors.black26,
                          fontSize: 14,
                          fontFamily: 'futura-regular',
                        ),),
                      )
                    ),
                  ),
                ],
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Wrap(
                  direction: Axis.horizontal,
                  children: const [
                    Text("Birthdate", style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'futura-regular',
                      fontSize: 13,
                    ),),
                    Text("*", style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'futura-regular',
                      fontSize: 11,
                      fontFeatures: [FontFeature.superscripts()],
                    ),),
                  ],
                ),
              ),
              Container(height: 5,),
              Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 65,
                    height: 25,
                    child: TextField(
                      style: const TextStyle(
                        color: Colors.black,
                        fontFamily: 'futura-regular',
                        fontSize: 13,
                      ),
                      keyboardType: TextInputType. number,
                      maxLength: 2,
                      textAlign: TextAlign.center,
                      textAlignVertical: TextAlignVertical.bottom,
                      decoration: InputDecoration(
                          counterText: "",
                          hintText: "Day",
                          hintStyle: const TextStyle(
                            color: Colors.grey,
                            fontFamily: 'futura-regular',
                            fontSize: 13,
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
                  Container(width: 10,),
                  Container(
                    alignment: Alignment.center,
                    width: 65,
                    height: 25,
                    child: TextField(
                      style: const TextStyle(
                        color: Colors.black,
                        fontFamily: 'futura-regular',
                        fontSize: 13,
                      ),
                      keyboardType: TextInputType. number,
                      maxLength: 2,
                      textAlign: TextAlign.center,
                      textAlignVertical: TextAlignVertical.bottom,
                      decoration: InputDecoration(
                          counterText: "",
                          hintText: "Month",
                          hintStyle: const TextStyle(
                            color: Colors.grey,
                            fontFamily: 'futura-regular',
                            fontSize: 13,
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
                  Container(width: 10,),
                  Container(
                    alignment: Alignment.center,
                    width: 65,
                    height: 25,
                    child: TextField(
                      style: const TextStyle(
                        color: Colors.black,
                        fontFamily: 'futura-regular',
                        fontSize: 13,
                      ),
                      keyboardType: TextInputType. number,
                      maxLength: 4,
                      textAlign: TextAlign.center,
                      textAlignVertical: TextAlignVertical.bottom,
                      decoration: InputDecoration(
                          counterText: "",
                          hintText: "Year",
                          hintStyle: const TextStyle(
                            color: Colors.grey,
                            fontFamily: 'futura-regular',
                            fontSize: 13,
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
                ],
              ),
              Container(height: 10,),
              SizedBox(
                height: 45,
                child: TextField(
                  style: const TextStyle(
                    color: Colors.black,
                    fontFamily: 'futura-regular',
                    fontSize: 18,
                  ),
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                      hintText: "Email",
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
              Container(height: 10,),
              SizedBox(
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
              Container(height: 10,),
              SizedBox(
                height: 45,
                child: TextField(
                  style: const TextStyle(
                    color: Colors.black,
                    fontFamily: 'futura-regular',
                    fontSize: 18,
                  ),
                  textAlignVertical: TextAlignVertical.bottom,
                  obscureText: !show_password,
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
              Container(height: 10,),
              SizedBox(
                height: 45,
                child: TextField(
                  style: const TextStyle(
                    color: Colors.black,
                    fontFamily: 'futura-regular',
                    fontSize: 18,
                  ),
                  obscureText: !show_password,
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                      hintText: "Confirm password",
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
              Container(
                alignment: Alignment.centerLeft,
                width: MediaQuery.of(context).size.width,
                child: CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  contentPadding: EdgeInsets.zero,
                  value: show_password,
                  onChanged: (value) {
                    setState(() {
                      show_password = !show_password;
                    });
                  },
                  title: Transform.translate(
                    offset: const Offset(-20, 0),
                    child: const Text("Show password", style: TextStyle(
                      color: Colors.black26,
                      fontSize: 14,
                      fontFamily: 'futura-regular',
                    ),),
                  )
                ),
              ),
              baby_sitter ? Container(
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.centerLeft,
                child: const Text("Please upload your CV", style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'futura-regular',
                ),),
              ) : Container(),
              baby_sitter ? Row(
                children: [
                  MaterialButton(
                    height: 25,
                    onPressed: () {

                    },
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    padding: const EdgeInsets.all(2),
                    color: HexColor("#077CF2"),
                    child: const Text(
                      "Choose a file",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontFamily: 'futura-regular',
                      ),
                    ),
                  ),
                  Container(width: 5,),
                  const Text("No files chosen", style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Colors.black,
                    fontFamily: 'futura-regular',
                    fontSize: 14,
                  ),)
                ],
              ) : Container(),
              Container(height: 10,),
              MaterialButton(
                onPressed: () {
                  Navigator.pop(context);
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
              Container(height: 15,),
              Container(
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.centerLeft,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "By clicking Sign Up, you are agreeing to our ",
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'futura-regular',
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () async {
                            Navigator.push(context, slideLeft(const TermsAndConditions()));
                          },
                          child: const Text(
                            "terms of use ",
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 12,
                              fontFamily: 'futura-regular',
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        const Text(
                          "and ",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 12,
                            fontFamily: 'futura-regular',
                            color: Colors.black,
                          ),
                        ),
                        GestureDetector(
                          onTap: () async {
                            Navigator.push(context, slideLeft(const TermsAndConditions()));
                          },
                          child: const Text(
                            "terms of use. ",
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 12,
                              fontFamily: 'futura-regular',
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],)
              ),
            ],
          ),
        ),
      ),
    );
  }

}
