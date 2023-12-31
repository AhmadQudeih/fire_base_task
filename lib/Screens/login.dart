import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  bool _isObscure = true;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: Padding(
        padding: const EdgeInsets.only(top: 69, right: 50, left: 50),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: ListView(
            children: [
              Image.asset(
                'images/logo2.png',
                width: 150,
                height: 150,
              ),
              const Center(
                child: Text(
                  'UFUQ SCHOOLS',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff53A4B1),
                  ),
                ),
              ),
              const Center(
                child: Text(
                  '  مدارس أفق الأبتدائية  ',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff53A4B1),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
                width: 50,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'البريد الالكتروني',
                    style: TextStyle(
                        fontFamily: 'er',
                        fontSize: 17,
                        color: Color(0xff292D32)),
                  ),
                  const SizedBox(
                    height: 6,
                  ),

                  // TextField
                  const SizedBox(
                    height: 65,
                    child: Card(
                      elevation: 0,
                      shape: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(14)),
                        borderSide:
                            BorderSide(width: 0, color: Colors.transparent),
                      ),
                      child: TextField(
                        style: TextStyle(
                            fontFamily: 'er',
                            fontSize: 17,
                            color: Colors.black),
                        textAlignVertical: TextAlignVertical.top,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xffEFF2F5),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 14.5, horizontal: 13),
                          // constraints: BoxConstraints.tightFor(width: double.infinity, height: 51),
                          hintText: 'Enter your Email',
                          hintStyle: TextStyle(
                              fontFamily: 'er',
                              fontSize: 17,
                              color: Color(0xffB3BFCB)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(14)),
                              borderSide: BorderSide(
                                  width: 0, color: Colors.transparent)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(14)),
                              borderSide:
                                  BorderSide(width: 1.2, color: Colors.black)),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Text(
                    'كلمة المرور',
                    style: TextStyle(
                        fontFamily: 'er',
                        fontSize: 17,
                        color: Color(0xff292D32)),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  // TextField password
                  SizedBox(
                    height: 65,
                    child: Card(
                      elevation: 0,
                      shape: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(14)),
                        borderSide:
                            BorderSide(width: 0, color: Colors.transparent),
                      ),
                      child: TextField(
                        obscureText: _isObscure,
                        style: const TextStyle(
                            fontFamily: 'er',
                            fontSize: 17,
                            color: Colors.black),
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color(0xffEFF2F5),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 14, horizontal: 13),
                          // constraints: BoxConstraints.tightFor(width: double.infinity, height: 51),

                          hintText: 'Enter your Password',
                          hintStyle: const TextStyle(
                              fontFamily: 'er',
                              fontSize: 17,
                              color: Color(0xffB3BFCB)),
                          enabledBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(14)),
                              borderSide: BorderSide(
                                  width: 0, color: Colors.transparent)),
                          focusedBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(14)),
                              borderSide:
                                  BorderSide(width: 1.2, color: Colors.black)),

                          suffix: Stack(children: [
                            const SizedBox(
                              height: double.infinity,
                              width: 40,
                              child: Card(
                                color: Colors.transparent,
                                elevation: 0,
                              ),
                            ),
                            Positioned(
                              right: 0,
                              top: 6,
                              child: IconButton(
                                  icon: Icon(_isObscure
                                      ? Icons.visibility
                                      : Icons.visibility_off),
                                  onPressed: () {
                                    setState(() {
                                      _isObscure = !_isObscure;
                                    });
                                  }),
                            )
                          ]),
                        ),
                      ),
                    ),
                  ),
                  const Text(
                    'نسيت كلمة المرور ؟',
                    style: TextStyle(
                      color: Color(0xff53A4B1),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  // Navigator.pushReplacement(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => bottomNavgation()));
                },
                child: const Text(
                  ' تسجيل الدخول',
                  style: TextStyle(fontSize: 18),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff53A4B1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13)),
                    minimumSize: const Size(100, 60)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
